class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :pokedex_number
      t.string :data
      t.string :sprite

      t.timestamps
    end
  end
end
