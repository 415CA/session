class UserSkateShopsController < ApplicationController
  before_action :find_user_skate_shop, except: [:index, :new, :create]

  def index
    @user_skate_shops = UserSkateShop.all
  end

  def show
  end

  def new
    @user_skate_shop = UserSkateShop.new()
    @skate_shop = SkateShop.all
  end

  def edit
  end

  def create
    @user_skate_shop = UserSkateShop.create(user_skate_shop_params)
    if @user_skate_shop.valid?
      redirect_to @user_skate_shop.skate_shop
    else
      flash[:error] = 'Something went wrong'
      redirect_to new_user_skate_shop_path
    end
  end

  def update
    if @user_skate_shop.update_attributes(user_skate_shop_params)
      flash[:success] = "UserSkateShop was successfully updated"
      redirect_to @user_skate_shop
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @user_skate_shop.destroy
      flash[:success] = "UserSkateShop was successfully deleted"
      redirect_to @user_skate_shops_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @user_skate_shops_path
    end
  end

  private

    def find_user_skate_shop
      @user_skate_shop = UserSkateShop.find(params[:id])
    end

    def user_skate_shop_params
      params.require(:user_skate_shop).permit(:user_id, :skate_shop_id )
    end

end
