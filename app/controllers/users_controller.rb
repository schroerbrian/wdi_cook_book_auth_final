class UsersController < ApplicationController
  respond_to :json
  respond_to :html
  
  def index
    @users = User.all
    
    respond_to do |format|
     format.html 
     format.json { render json: @users }
    end  
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

