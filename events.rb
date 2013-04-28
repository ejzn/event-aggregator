require 'rubygems'
require 'eventful/api'
require 'json'

# This module houses the different hooks into events and where the information
# is queried from.
module Events

    # A wrapper class that controls calling the EventFul API
    class EventfulWrapper

        def initialize()
            #Start our eventful API session
            @eventful = Eventful::API.new 'gRD2ZtJwjqKVNht3'
        end

        def event_by_id(id)
            results = @eventful.call 'events/get',
                                    :id => id
           results.to_json
        end

    end

    class EventBriteWrapper
        def initialize()
            raise 'Not yet implemented'
        end
    end

    class MeetupWrapper
        def initialize()
            raise 'Not yet implemented'
        end
    end

end

