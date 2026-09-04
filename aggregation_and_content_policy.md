
<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

# Aggregation and Content Policy

This document aims at bringing clarity to what should be included on Planet
Valkey and how changes to the aggregated feeds are made.  The current
version of the document can be found in (1).

(1): https://github.com/valkey-io/planet/blob/main/aggregation_and_content_policy.md

The configuration file containing currently aggregated feeds is
[planet.ini](https://github.com/valkey-io/planet/blob/main/planet.ini).


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Abuse Procedure

If there is a problem with content on Planet Valkey, please try
solving it directly with the author (in the subscription list, there should be a
link about how to contact them, or there is probably a way to comment on the
problematic post).  If this fails, or if it is a kind of problem that cannot
be solved with a discussion, open an
[Issue](https://github.com/valkey-io/planet/issues)
or send an email to valkey-planet AT oursqlcommunity DOT org.


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Relevant Feeds

The aggregator should contain articles that are relevant to the Valkey Community
/ Ecosystem.

- If your blog contains a mix of Valkey and non-Valkey content, please submit a
category or a tag feed instead of the default feed.

- If it is not possible to submit a category or a tag feed,
[filtering your feed](https://github.com/valkey-io/planet/blob/main/feed_filtering.md)
is possible.

- If the recent entries of a submitted feed contain a small amount of relevant
content, it might be considered for
[filtering](https://github.com/valkey-io/planet/blob/main/feed_filtering.md).
Authors will usually be contacted when filtering is implemented on their feed.


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Content Management

TBC...

Minimal curation...

As long as your content is relevant to the community/ecosystem
(and we are voluntarily wide in the definition of relevant), it is welcome on
the aggregator.  This does not mean that harmful content will be tolerated.
What is considered harmful content is obviously subjective, and we will do our
best to deal with this in an open and fair way.

...


<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

## Adding / Removing a Feed

If you want to add your feed, open an
[Issue](https://github.com/valkey-io/planet/issues)
providing:

* the name for your blog,
* a link to your blog,
* a link to the corresponding Atom or RSS feed,
* ways to contact you: Mastodon, BlueSky, Twitter, LinkedIn, email and/or others,
* any other information you think is relevant.

Alternatively, for quicker processing, you can create a
[Pull Request](https://github.com/valkey-io/planet/pulls)
containing the relevant changes to the
[planet.ini](https://github.com/valkey-io/planet/blob/main/planet.ini)
file.

<!-- 6789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 -->

If you have a good reason for not creating an issue or a PR, you can send an email
to valkey-planet AT oursqlcommunity DOT org.  In your email, please explain why you
did not create an issue.  Do not send an email for anonymity reasons, as your name
will be mentioned in a corresponding issue or pull request (normally, addition
and removal of feeds are done openly, but there might be exceptions for abuses
or other unusual situations).

If you want to remove a feed, open an issue, create a pull request, or send an
email.

(Policy inspired by the one of
[Planet for the MySQL Community](https://github.com/oursqlcommunity-org/planet/blob/7d208aea5757aeb38fe1c4c0a287f9c5544d7a8b/aggregation_and_content_policy.md).)


<!-- EOF -->
