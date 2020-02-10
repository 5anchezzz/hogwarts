class HousesController < ApplicationController

  #GET /houses
  #GET /
  def index
    @houses = House.order(:name)
  end


  #GET /houses/:id
  def show
    @house = House.includes(:students, :teachers).find(params[:id])
  end
end
