class UsersController < ApplicationController
  before_action :find_user, except: [:index, :new, :create, :brooklyn]

  def index
    @users = User.all
  end

  def show
    @skate_shops = SkateShop.all

  end


  def new
    @user = User.new
    
  end

 

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User successfully created"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "User was successfully updated"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = "User was successfully deleted"
      redirect_to @users_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @users_path
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, :bio, :borough, :password)
  end

  def find_borough
    @borough = SkateShop.find{|shop|shop.borough == "Brooklyn"}
  end


end
