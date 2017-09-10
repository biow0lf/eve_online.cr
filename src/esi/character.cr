module EveOnline
  module ESI
    class Character < Base
      API_ENDPOINT = "https://esi.tech.ccp.is/v4/characters/%s/?datasource=tranquility"

      def initialize(character_id : Int32)
        super()
        @character_id = character_id
      end

      def url
        API_ENDPOINT % @character_id
      end
    end
  end
end
