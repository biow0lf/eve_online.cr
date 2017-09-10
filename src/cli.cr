require "./version"
require "./esi/base"
require "./esi/character"

character = EveOnline::ESI::Character.new(90729314)

puts character.user_agent

puts character.url

puts character.response
