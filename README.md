# current_event plugin for Jekyll

This Jekyll plugin take a collection of events and filters out the "current" event, i.e. the event that takes places next.

>Example:
>
>If today was 24 Feb 2016 (a Wednesday), and our events take place weekly on Thursdays, the current/upcoming event would take place on Thursday, 25 Feb 2016.

## Getting Started

* Copy `current_event.rb` to your `_plugins` directory
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
