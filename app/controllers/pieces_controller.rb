class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
  end

  def show
    @piece = Piece.find(params[:id])
  end
end
