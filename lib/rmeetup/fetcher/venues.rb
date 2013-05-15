module RMeetup
  module Fetcher
    class Venues < Base
      def initialize
        @type = :venues
      end

      # turn the result hash into a Venue class
      def format_result(result)
        RMeetup::Type::Venue.new(result)
      end
    end
  end
end