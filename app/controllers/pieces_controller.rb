class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
    @location = Location.find(params[:location_id])
  end

  def create
    @location = Location.find(params[:location_id])
    @piece = Piece.new(piece_params)
    @piece.location_id = params[:location_id]

    if @piece.save
      redirect_to @location
    else
      render 'new'
    end
  end

  def show
    @piece = Piece.find(params[:id])
  end

  private

  def piece_params
    params.require(:piece).permit(:title, :maker, :stuff, :time_period)
  end

end
