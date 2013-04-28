require 'test/unit'
require File.join(File.dirname(__FILE__), '../lib/', 'events')

class TestEvents < Test::Unit::TestCase
    def test_init_eventful
        eventful = Events::EventfulWrapper.new()
        assert_not_nil(eventful)
    end
    def test_event_query
        eventful = Events::EventfulWrapper.new()
        json_result = JSON.parse(eventful.event_by_id('E0-001-000278174-6'))
        assert_equal "Ohio", json_result['region']
    end
end
