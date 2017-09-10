require "http/client"
require "json"

module EveOnline
  module ESI
    class Base
      @token : String?
      @content : String?

      def initialize(@token = nil)
        @parser = JSON
      end

      def url
        raise NotImplementedError
      end

      def scope
        raise NotImplementedError
      end

      def user_agent
        "EveOnline API (https://github.com/biow0lf/eve_online.cr) v#{ VERSION }"
      end

      def content
        @content ||= HTTP::Client.get(url, headers: HTTP::Headers{"User-agent" => user_agent}).body
      end

      def response
        @parser.parse(content)
      end
    end
  end
end
