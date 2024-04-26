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
    user = current_user
    render json: user, status: :ok
  end

  def update
    @user = User.find_by(id: params[:id])
    if current_user == @user
      @user.update(
        name: params[:name] || @user.name,
        username: params[:username] || @user.username,
        email: params[:email] || @user.email,
        bio: params[:bio] || @user.bio,
      )
      if @user.valid?
        render :show
      else
        render json: { errors: @user.errors.full_messages }, status: 422
      end
    end
  end
end
