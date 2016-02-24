module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.0.2'

    def generate(site)
      site.collections.each do |name, collection|
        if name == 'events'
          current_event = find_current_event(collection)
          site.data['currentEvent'] = current_event
        end
      end
    end

    def find_current_event(events)
      current_time = Time.now.strftime('%s')
      events.docs.each do |event|
        event_start = event.data['start'].strftime('%s')
        return event if (event_start > current_time)
      end
    end

  end
end
