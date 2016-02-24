module Reading
  class Generator < Jekyll::Generator
    VERSION = '0.1.0'

    def generate(site)
      site.collections.each do |name, collection|
        if name == 'events'
          site.data['currentEvent'] = collection.docs.select { |event| event.data['start'] > Time.now }.first
        end
      end
    end

  end
end
