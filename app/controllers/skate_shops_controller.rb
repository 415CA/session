class SkateShopsController < ApplicationController
  before_action :find_skate_shop, except: [:index, :new, :create]

  def index
    @skate_shops = SkateShop.all
  end

  def show
  end

  private

    def find_skate_shop
      @skate_shop = SkateShop.find(params[:id])
    end

    def skate_shop_params
      params.require(:skate_shop).permit(:name, :address, :borough, :description, :google_map )
    end
end
