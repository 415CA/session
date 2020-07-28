class ProductsController < ApplicationController
  before_action :find_product, except: [:index, :new, :create]

  def index
    @products = Product.all
  end

  def show
  end

  private

    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :category, :brand, :price, :image)
    end
end

