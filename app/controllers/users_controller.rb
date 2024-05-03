class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def create
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      user_data = @user.as_json(only: [:id, :name, :username, :email, :bio])
      user_data[:profile_picture_url] = url_for(@user.profile_picture) if @user.profile_picture.attached?
      render json: user_data
    else
      render json: { error: "User not found" }, status: :not_found
    end
  end

  def update
    @user = User.find(params[:id])
    if user_params_changed?
      if @user.update(user_params.except(:profile_picture))
        render json: @user
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: @user # Return the previous user data if no changes are made
    end
  end

  def update_profile_picture
    @user = User.find(params[:id])
    if @user.update(profile_picture: params[:user][:profile_picture])
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :bio)
  end

  # Check if any changes are made to user attributes
  def user_params_changed?
    user_params.to_h.any? { |key, value| @user[key] != value }
  end
end
