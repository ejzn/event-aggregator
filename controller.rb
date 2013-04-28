Camping.goes :Evently

require 'json'

module Evently::Controllers
    class Index < R '/event'
        def get
            @result = {:now=>Time.now.utc.to_s}
            @headers['Content-Type'] = "application/json"
            @result.to_json
        end
    end
end
