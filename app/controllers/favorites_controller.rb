class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favorites = current_user.favorites
    render :index
  end

  def create
    if Favorite.exists?(user_id: current_user.id, brewery_id: params[:brewery_id])
      render json: { error: "Brewery already favorited" }, status: :unprocessable_entity
    else
      @favorite = Favorite.new(
        user_id: current_user.id,
        brewery_id: params[:brewery_id],
        name: params[:name],
        city: params[:city],
        state: params[:state],
        brewery_type: params[:brewery_type],
        website_url: params[:website_url],
        latitude: params[:latitude],
        longitude: params[:longitude],
        address: params[:address],

      )
      if @favorite.save
        render :show
      else
        render json: { errors: @favorite.errors.full_messages }, status: 422
      end
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
