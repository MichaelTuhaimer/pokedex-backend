class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      pokemon_id: params[:pokemon_id],
    )
    render :show
  end
end
