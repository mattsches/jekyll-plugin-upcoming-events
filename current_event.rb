module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.0.1'

    def generate(site)
      site.collections.each do |name, collection|
        if name == 'events'
          currentEvent = findCurrentEvent(collection)
          # Jekyll.logger.info "Current event is #{currentEvent.data['title']} on #{currentEvent.data['start']}"
          site.data['currentEvent'] = currentEvent
        end
      end
    end

    def findCurrentEvent(events)
      currentTime = Time.now.strftime('%s')
      events.docs.each do |event|
        eventStart = event.data['start'].strftime('%s')
        return event if (eventStart > currentTime)
      end
    end

  end
end
