require 'test/unit'
require 'events'

class TestEvents < Test::Unit::TestCase
    def test_init_eventful
        eventful = Events::EventfulWrapper.new()
        assert_not_nil(eventful)
    end

end
