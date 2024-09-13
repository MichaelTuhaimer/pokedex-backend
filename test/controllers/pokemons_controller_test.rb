require "test_helper"

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  # test "show" do
  #   get "/photos/#{Pokemon.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["id", "name", "pokedex_number", "data", "sprite", "created_at", "updated_at"], data.keys
  # end

  # test "index" do
  #   get "/pokemons.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal Pokemons.count, data.length
  # end

  # test "create" do
  #   assert_difference "Pokemon.count", 1 do
  #     post "/pokemons.json", params: { name: "pikachu", pokedex_number: 25, data: "test", sprite: "test.png" }
  #     assert_response 200
  #   end
  # end
end
