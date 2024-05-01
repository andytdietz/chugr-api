class CommentsController < ApplicationController
  def index
    @comments = Comment.includes(:user).all
    render json: @comments.as_json(include: { user: { only: :username } })
  end

  def create
    @comment = Comment.new(
      brewery_id: params[:brewery_id],
      user_id: current_user.id,
      content: params[:content],
    )
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    if @comment
      @comment.destroy
      head :no_content
    else
      render json: { error: "Comment not found" }, status: :not_found
    end
  end

  # private
end
