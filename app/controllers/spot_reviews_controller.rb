class SpotReviewsController < ApplicationController
  before_action :find_spot_review, except: [:index, :new, :create]

  def new
    @spot_review = SpotReview.new
  end

  def edit
  end

  def create
    @spot_review = SpotReview.new(spot_review_params)
    if @spot_review.save
      flash[:success] = "SpotReview successfully created"
      redirect_to @spot_review
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @spot_review.update_attributes(spot_review_params)
      flash[:success] = "SpotReview was successfully updated"
      redirect_to @spot_review
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @spot_review.destroy
      flash[:success] = "SpotReview was successfully deleted"
      redirect_to @spot_reviews_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @spot_reviews_path
    end
  end

  private

    def find_spot_review
      @spot_review = SpotReview.find(params[:id])
    end

    def spot_review_params
      params.require(:spot_review).permit(:title, :content, :rating, :user_id, :skate_spot_id )
    end
end
