class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all  
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Cook Book app!"
      sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

end

