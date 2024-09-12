require "http"

class PokemonsController < ApplicationController
  def index
    page_size = params[:page_size] || 96
    @pokemons = Pokemon.all
      .limit(page_size)
      .offset(page_size * params[:page_number].to_i)
    render :index
  end

  def showZ
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
