class CheckInsController < ApplicationController
  def index
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @check_in = @piece.check_ins.new
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @check_in = @piece.check_ins.new(check_in_params)

    if @check_in.save
      redirect_to @piece
    else
      render 'new'
    end
  end


  def show
  end

private

  def check_in_params
    params.require(:check_in).permit(:note)
  end


end

