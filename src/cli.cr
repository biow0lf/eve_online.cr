require "./version"
require "./esi/base"
require "./esi/character"

character_id = 90729314 # or "90729314"

character = EveOnline::ESI::Character.new(character_id)

# puts character.user_agent

# puts character.url

puts character.response

puts character.as_json
