class ChangePokemonIdInFavorites < ActiveRecord::Migration[7.1]
  def change
    change_column :favorites, :pokemon_id, :integer, using: "pokemon_id::integer"
  end
end
