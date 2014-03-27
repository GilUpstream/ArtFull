class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
  end

  def show
    @piece = Piece.find(params[:id])
    @check_ins = @piece.check_ins
    @users = User.all
  end
end
