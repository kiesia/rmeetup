require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe RMeetup::Fetcher::Venues, 'fetching some Venues' do
  before do
    @fetcher = RMeetup::Fetcher::Venues.new
    @fetcher.extend(RMeetup::FakeResponse::Venues)
  end

  it 'should return a collection of Venues' do
    @fetcher.fetch.each do |result|
      result.should be_kind_of(RMeetup::Type::Venue)
    end
  end
end