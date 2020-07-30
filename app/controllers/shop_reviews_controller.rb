class ShopReviewsController < ApplicationController
  before_action :find_shop_review, except: [:index, :new, :create]

  def index
    @shop_reviews = ShopReview.all
  end

  def show
  end

  def new
    @shop_review = ShopReview.new
  end

  def edit
  end

  def create
    @shop_review = ShopReview.new(shop_review_params)
    if @shop_review.save
      flash[:success] = "ShopReview successfully created"
      redirect_to skate_shop_path(@shop_review.skate_shop_id)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @shop_review.update_attributes(shop_review_params)
      flash[:success] = "ShopReview was successfully updated"
      redirect_to @shop_review
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @shop_review = ShopReview.find(params[:id])
    if @shop_review.destroy
      flash[:success] = "ShopReview was successfully deleted"
      redirect_to skate_shop_path(@shop_review.skate_shop_id)
    else
      flash[:error] = "Something went wrong"
      redirect_to skate_shop_path(@shop_review.skate_shop_id)
    end
  end

  private

    def find_shop_review
      @shop_review = ShopReview.find(params[:id])
    end

    def shop_review_params
      params.require(:shop_review).permit(:title, :content, :rating, :user_id, :skate_shop_id)
    end

end
