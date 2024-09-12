require "http"

class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.limit(10)
    render :index
  end

  def show
    pokemon = params[:id]
    response = HTTP.get("https://pokeapi.co/api/v2/pokemon/#{pokemon}")
    data = response.parse
    render json: data
  end

  def create
    index = 1
    while true
      pokemon = index
      response = HTTP.get("https://pokeapi.co/api/v2/pokemon/#{pokemon}")
      if response.status.success?
        data = response.parse
        @pokemon = Pokemon.create(
          name: data["name"],
          pokedex_number: data["id"],
          data: data,
          sprite: data["sprites"]["front_default"],
        )
        index += 1
      else
        break
      end
    end
    render :show
  end
end
