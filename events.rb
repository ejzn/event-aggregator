require 'rubygems'
require 'eventful/api'

# This module houses the different hooks into events and where the information
# is queried from.
module Events

    # A wrapper class that controls calling the EventFul API
    class EventfulWrapper
        def initialize()
            #Start our eventful API session
            @eventful = Eventful::API.new 'gRD2ZtJwjqKVNht3'
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

