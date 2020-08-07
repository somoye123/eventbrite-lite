require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # validates :name, :description, :location, :date, presence: tru
  def setup
    @event = Event.new(name: 'Event1', description: 'Event1 Description here', location: 'Event1 location', date: '2020-08-06, 20:00 ', creator_id: 1)
  end

  test 'event name should be present' do
    @event.name = ' '
    assert_not @event.valid?
  end

  test 'event description should be present' do
    @event.description = ' '
    assert_not @event.valid?
  end

  test 'event location should be present' do
    @event.location = ' '
    assert_not @event.valid?
  end
end
