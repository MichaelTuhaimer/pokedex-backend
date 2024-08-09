require "test_helper"

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  test "show" do
    get "/photos/#{Pokemon.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "ability", "height", "weight", "hp", "attack", "defense", "special_attack", "special_defense", "speed", "created_at", "updated_at"], data.keys
  end

  test "index" do
    get "/pokemons.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Pokemons.count, data.length
  end

  test "create" do
    assert_difference "Pokemon.count", 1 do
      post "/pokemons.json", params: { name: "pikachu", ability: "static", height: 1, weight: 1, hp: 1, attack: 1, defense: 1, special_attack: 1, special_defense: 1, speed: 1 }
      assert_response 200
    end
  end
end
