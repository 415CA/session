class UserSkateSpotsController < ApplicationController
  before_action :find_user_skate_spot, except: [:index, :new, :create]

  def index
    @user_skate_spots = UserSkateSpot.all
  end

  def show
  end

  def new
    @user_skate_spot = UserSkateSpot.new
  end

  def edit
  end

  def create
    @user_skate_spot = UserSkateSpot.new(params[:user_skate_spot])
    if @user_skate_spot.save
      flash[:success] = "UserSkateSpot successfully created"
      redirect_to @user_skate_spot
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @user_skate_spot.update_attributes(params[:user_skate_spot])
      flash[:success] = "UserSkateSpot was successfully updated"
      redirect_to @user_skate_spot
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @user_skate_spot.destroy
      flash[:success] = "UserSkateSpot was successfully deleted"
      redirect_to @user_skate_spots_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @user_skate_spots_path
    end
  end

  private

    def find_user_skate_spot
      @user_skate_spot = UserSkateSpot.find(params[:id])
    end

    def user_skate_spot_params
      params.require(:user_skate_spot).permit(:user_id, :skate_spot_id )
    end

end
