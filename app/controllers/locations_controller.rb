class LocationsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @location = Location.find(params[:id])
    @location_pieces = Piece.where(location_id: params[:id]).ids
  end
end
