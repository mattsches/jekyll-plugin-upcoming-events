module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.1.0'

    def generate(site)
      site.collections.each do |name, collection|
        if name == 'events'
          site.data['upcomingEvents'] = collection.docs.select { |event| event.data['start'] >= Time.now }
        end
      end
    end

  end
end
