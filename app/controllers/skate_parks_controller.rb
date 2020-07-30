class SkateParksController < ApplicationController
  before_action :find_skate_park, except: [:index, :new, :create]

  def index
    @skate_parks = SkatePark.all
  end

  def show
    
  end

  private

    def find_skate_park
      @skate_park = SkatePark.find(params[:id])
    end

    def skate_park_params
      params.require(:skate_park).permit(:name, :address, :borough, :description, :rating, :google_map, :user_skate_park)
    end
end
