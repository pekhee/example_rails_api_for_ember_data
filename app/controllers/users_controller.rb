class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  before_action :build_user, only: [:create]

  attr_accessor :user

  def index
    render json: User.all
  end

  def show
    render json: user
  end

  def create
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def update
    if user.update(user_params)
      render json: user, status: :no_content
    else
      render json: user.errors
    end
  end

  def destroy
    render json: user.destroy!
  end

  private
  def user_params
    params.require(:user).permit!
  end

  def find_user
    self.user = User.find(params[:id])
  end

  def build_user
    self.user = User.new(user_params)
  end
end
