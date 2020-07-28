class SkateSpotsController < ApplicationController
  before_action :find_skate_spot, except: [:index, :new, :create]

  def index
    @skate_spots = SkateSpot.all
  end

  def show
  end

  def new
    @skate_spot = SkateSpot.new
  end

  def edit
  end

  def create
    @skate_spot = SkateSpot.new(params[:skate_spot])
    if @skate_spot.save
      flash[:success] = "SkateSpot successfully created"
      redirect_to @skate_spot
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    if @skate_spot.update_attributes(params[:skate_spot])
      flash[:success] = "SkateSpot was successfully updated"
      redirect_to @skate_spot
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @skate_spot.destroy
      flash[:success] = "SkateSpot was successfully deleted"
      redirect_to @skate_spots_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @skate_spots_path
    end
  end

  private

    def find_skate_spot
      @skate_spot = SkateSpot.find(params[:id])
    end

end
