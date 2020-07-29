class ParkReviewsController < ApplicationController
  # before_action :find_park_review, except: [:index, :new, :create]

  def new
    @park_review = ParkReview.new
  end

  def create
    @park_review = ParkReview.new(park_review_params)
    if @park_review.save
      flash[:success] = "ParkReview successfully created"
      redirect_to skate_park_path(@park_review.skate_park_id)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def edit
    @park_review = ParkReview.find(park_review_params)
  end


  def update
    if @park_review.update_attributes(park_review_params)
      flash[:success] = "ParkReview was successfully updated"
      redirect_to @park_review
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @park_review.destroy
      flash[:success] = "ParkReview was successfully deleted"
      redirect_to @park_reviews_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @park_reviews_path
    end
  end

  private

    # def find_park_review
    #   @park_review = ParkReview.find(params[:id])
    # end

    def park_review_params
      params.require(:park_review).permit(:title, :content, :rating, :user_id, :skate_park_id)
    end


end
