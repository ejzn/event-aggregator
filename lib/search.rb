require 'rubygems'
require 'json'
require 'eventful/api'

module Evently

    # Search module that translates the categories request into the actual event API searches
    # A wrapper class that controls calling the EventFul API
    class Search

        def initialize()
            @eventful = Eventful::API.new 'gRD2ZtJwjqKVNht3'
        end

        def get_categories()
            results = @eventful.call 'categories/list' 
            categories = []
            results['category'].each do |item| 
                categories.push(item['id'])
            end
            categories.to_json
        end
    end

end
