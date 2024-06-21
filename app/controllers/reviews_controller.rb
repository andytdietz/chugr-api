class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:user).all
    render json: @reviews.as_json(include: { user: { only: :username } })
  end

  def create
    @review = Review.new(
      brewery_id: params[:brewery_id],
      user_id: current_user.id,
      rating: params[:rating],
    )
    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end
end
