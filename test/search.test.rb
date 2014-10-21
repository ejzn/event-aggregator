require 'test/unit'
require File.join(File.dirname(__FILE__), '../lib/', 'search')

class TestEvents < Test::Unit::TestCase
    def test_search_init
        search = Evently::Search.new()
        assert_not_nil(search)
    end
    def test_search_get_categories
        search = Evently::Search.new()
        json_result = JSON.parse(search.get_categories())
        assert_equal 27, json_result.length
    end
end
