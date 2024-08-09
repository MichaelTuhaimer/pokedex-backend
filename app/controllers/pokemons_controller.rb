require "http"

class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render :index
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
    render :show
  end

  def create
    pokemon = params[:pokemon]
    response = HTTP.get("https://pokeapi.co/api/v2/pokemon/#{pokemon}")
    data = response.parse
    @pokemon = Pokemon.create(
      name: data["name"],
      ability: data["abilities"][0]["ability"]["name"],
      height: data["height"].to_f / 10,
      weight: data["weight"].to_f / 10,
      hp: data["stats"][0]["base_stat"],
      attack: data["stats"][1]["base_stat"],
      defense: data["stats"][2]["base_stat"],
      special_attack: data["stats"][3]["base_stat"],
      special_defense: data["stats"][4]["base_stat"],
      speed: data["stats"][5]["base_stat"],
    )
    render :show
  end
end
