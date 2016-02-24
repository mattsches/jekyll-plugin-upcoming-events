# upcoming_events plugin for Jekyll

This Jekyll plugin takes a collection of events and filters out the upcoming events.

>Example:
>
>If today was 24 Feb 2016 (a Wednesday), and our events take place weekly on Thursdays, the upcoming events would take place today or later.

## Getting Started

* Copy `upcoming_events.rb` to your `_plugins` directory
* Create a directory named `_events`
* Create a file for each event; event names must be ordered, e.g. by prefixing it with a date (however, **don't** use the `YYYY-MM-DD` prefix Jekyll reserves for posts; use `YYYYMMDD` for example.)
* Configure the events collection:
    ```
    collections:
      events:
        output: true
        permalink: /event/:path/

    ```
* Keep in mind this is an early version of this plugin, and I'm not a Ruby coder. Improvements (PRs) are very welcome :)

## Front Matter

Your event files require a special YAML Front Matter block at the beginning. In particular, the `start` key is required for figuring out the current event.

Here is an example:

```
---
layout: event
title: "Next Meetup of our Group"
start: 2016-02-25T19:00:00.00+01:00
end: 2016-02-25T22:00:00.00+01:00
location: "Our usual meetup location"
---
```

## In your Page

Now, you can access the current event data in your page: `site.data.currentEvent`

```
{% assign currentEvent = site.data.upcomingEvents.first %}
<h2><a href="{{ currentEvent.url }}">{{ currentEvent.start }}</a></h2>
<p><strong>{{ currentEvent.location }}</strong></p>
<p>{{ currentEvent.content }}</p>
```