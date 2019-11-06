class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

def index
  @flats = Flat.all
end



  def set_flat
      params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
    end
end
