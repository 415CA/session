class UserSkateParksController < ApplicationController
  before_action :find_user_skate_park, except: [:index, :new, :create]

  def index
    @user_skate_parks = UserSkatePark.all
  end

  def show; end

  def new
    @user_skate_park = UserSkatePark.new()
    @skate_parks = SkatePark.all
  end

  def edit; end

  def create
    @user_skate_park = UserSkatePark.create(user_skate_park_params)
    if @user_skate_park.valid?
      redirect_to @user_skate_park.skate_park
    else
      flash[:error] = 'Something went wrong'
      redirect_to new_user_skate_park_path
    end
  end

  def update
    if @user_skate_park.update_attributes(user_skate_park_params)
      flash[:success] = 'UserSkatePark was successfully updated'
      redirect_to @user_skate_park
    else
      flash[:error] = 'Something went wrong'
      redirect_to new_user_skate_park_path
    end
  end

  def destroy
    if @user_skate_park.destroy
      flash[:success] = 'UserSkatePark was successfully deleted'
      redirect_to @user_skate_parks_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to @user_skate_parks_path
    end
  end

  private

  def find_user_skate_park
    @user_skate_park = UserSkatePark.find(params[:id])
  end

  def user_skate_park_params
    params.require(:user_skate_park).permit(:user_id, :skate_park_id)
  end
end
