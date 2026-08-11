
<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

(this repo has recently been moved, major edits to come)

# Planet for the Valkey Community

This repository contains the configuration required to generate the contents of
[Planet for the Valkey Community](https://valkey-demo.oursqlcommunity.org/),
a blog / news aggregator (Planet) for the Valkey Community / Ecosystem.

The current version of this file can be found in (1).

(1): https://github.com/valkey-io/planet/blob/main/README.md


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Software

The system is built using [Planet Pluto](https://github.com/feedreader): a Free
Feed Reader and (Static) Website Generator.


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Dependencies

### Planet Pluto Software

As this system is built using the Planet Pluto Software, it needs to be installed
first.


### A Web Server

Planet Pluto only generates static web pages.  For serving these you need a web
server.  Explaining how to install and configure a web server is out of scope
of this README.


### A Planet Pluto Template

Planet Pluto needs a template for generating static web pages.  The template of
Planet for the Valkey Community can be found in the template directory of this
repository.

This template was derived from the template of
[Planet for the MySQL Community](https://github.com/oursqlcommunity-org/planet).


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Static Files Generation How-to

0. Install Planet Pluto, below commands are doing that for Debian 10.

```
sudo apt-get -y install ruby-full build-essential libsqlite3-dev
sudo gem install pluto
```

1. Clone this repository.

```
git clone https://github.com/valkey-io/planet.git
```

2. In the directory of the cloned repository, to build the `valkey-demo`
template with output in the `html` directory, run this command (this updates the
`planet.db` file or creates it)):

```
pluto build planet.ini -t valkey-demo -o ./html
```

* To generate the static files without fetching the feeds, run this command:

```
pluto merge -t valkey-demo -o ./html
```

* To fetch the feeds and update `planet.db` without generating static
files, run this command:

```
pluto update
```


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Feed Policy

The policy of what feeds are suitable for inclusion, along with guidance on
how to propose changes to the feeds list, is available in the file
[aggregation_and_content_policy.md](aggregation_and_content_policy.md).


<!-- EOF -->
