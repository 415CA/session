class SkateShopProductsController < ApplicationController
  before_action :find_skate_shop_product, except: [:index, :new, :create]

  def index
    @skate_shop_products = SkateShopProduct.all
  end

  def show
  end

  def new
    @skate_shop_product = SkateShopProduct.new
  end

  def edit
  end

  def create
    @skate_shop_product = SkateShopProduct.new(skate_shop_product_params)
    if @skate_shop_product.save
      flash[:success] = "SkateShopProduct successfully created"
      redirect_to @skate_shop_product
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @skate_shop_product.update_attributes(skate_shop_product_params)
      flash[:success] = "SkateShopProduct was successfully updated"
      redirect_to @skate_shop_product
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @skate_shop_product.destroy
      flash[:success] = "SkateShopProduct was successfully deleted"
      redirect_to @skate_shop_products_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @skate_shop_products_path
    end
  end

  private

    def find_skate_shop_product
      @skate_shop_product = SkateShopProduct.find(params[:id])
    end

    def skate_shop_product_params
      params.require(:skate_shop_products).permit(:skate_shop_id, products_id: [] )
    end

end
