class FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      pokemon_id: params[:pokemon_id],
    )
    render :show
  end

  def index
    @favorites = current_user.favorites
    render :index
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id])
    favorite.destroy
    render json: { message: "Unfavorited pokemon." }
  end
end
