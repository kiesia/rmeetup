module RMeetup
  module Type

    # == RMeetup::Type::Venue
    #
    # Data wraper for a Venue fetching response
    # Used to access result attributes as well
    # as progammatically fetch relative data types
    # based on this venue.

    class Venue

      attr_accessor :venue

      def initialize(venue = {})
        self.venue = venue
      end

      def method_missing(id, *args)
        return self.venue[id.id2name]
      end

      # Special accessors that need typecasting or other parsing

      def rating
        return self.venue['rating'].to_i
      end
      def rating_count
        return self.venue['rating_count'].to_i
      end
      def lat
        return self.venue['lat'].to_f
      end
      def lon
        return self.venue['lon'].to_f
      end
    end
  end
end