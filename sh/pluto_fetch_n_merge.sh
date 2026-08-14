#!/bin/bash

# Unofficial Bash Strict Mode (Google it, it is worth the read).
set -euo pipefail
#IFS=$'\n\t'    # I - JFG - am not fully sure about this one yet...

lock=/tmp/pluto_fetch_n_merge.lock

pluto_dir=/home/valkey-planets/valkey-demo
html_dir=./html
template=valkey-demo
log_dir=./fnm_logs

mode="${1-}"

if test "$mode" != "nolock"; then
  if ! mkdir $lock > /dev/null 2>&1; then

    test "$mode" != "wait" && echo "Locked: try again later." && exit 1

    while sleep 1; do
      mkdir $lock > /dev/null 2>&1 && break
    done
  fi
fi

trap "rm -rf $lock ; exit" INT TERM EXIT

# Move in pluto directory.
cd $pluto_dir

# Test existance of output directory and move back in pluto directory.
cd $html_dir
cd $pluto_dir

date_val="$(date +%F_%H-%M-%S)"
log_file="$log_dir/pluto_${date_val}.log"
err_file="$log_dir/pluto_${date_val}.err"

# Test that we can create log files.
touch $log_file
touch $err_file

# Rewrite ini file.
# As explained in a comment in the ini file, rewrite to Pluto tags.
sed_script="s/^  linkedin = /  avatar = /"
sed_script="$sed_script;s/^  author_link = /  location = /"
sed_script="$sed_script;s/^  bluesky = /  meetup = /"
sed_script="$sed_script;s/^  mastodon = /  rubygems = /"
rm -f planet.rewritten.ini
sed -e "$sed_script" planet.ini > planet.rewritten.ini
chmod a-w planet.rewritten.ini

# Run things, with logging.
{
  epoch_start="$(date +%s)"

  echo "$(date) - running pluto update."
  pluto update planet.rewritten.ini
  echo

  epoch_end="$(date +%s)"
  echo "$(date) - update in $(($epoch_end - $epoch_start)) seconds."
  echo

  echo "$(date) - running pluto merge."
  pluto merge -t $template -o $html_dir planet.rewritten.ini
  echo

  epoch_end="$(date +%s)"
  echo "$(date) - done in $(($epoch_end - $epoch_start)) seconds."
} >> $log_file 2>> $err_file

# EOF.
