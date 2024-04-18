class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      brewery_id: params[:brewery_id],
    )
    if @favorite.save
      render :show
    else
      render json: { errors: @favorite.errors.full_messages }, status: 422
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(id: params[:id])
    if @favorite
      @favorite.destroy
      render json: { message: "Favorite deleted" }
    else
      render json: { error: "Favorite not found or unauthorized" }, status: :not_found
    end
  end
end
