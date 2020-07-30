class UserSkateSpotsController < ApplicationController
  before_action :find_user_skate_spot, except: [:index, :new, :create]

  def index
    @user_skate_spots = UserSkateSpot.all
  end

  def show
  end

  def new
    @user_skate_spot = UserSkateSpot.new()
  end

  def edit
  end

  def create
    @user_skate_spot = UserSkateSpot.create(user_skate_spot_params)
    if @user_skate_spot.valid?
      redirect_to skate_spot_path(@user_skate_spot.skate_spot)
    else
      flash[:error] = 'Something went wrong'
      redirect_to new_user_skate_spot_path
    end
  end

  def update
    if @user_skate_spot.update_attributes(user_skate_spot_params)
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
