class CheckInsController < ApplicationController
  def index
    @check_ins = Piece.find(params[:piece_id]).check_ins
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @check_in = @piece.check_ins.new
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @check_in = @piece.check_ins.new(check_in_params)
    @check_in.user_id = current_user.id

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
    params.require(:check_in).permit(:note, :user_id, :piece_id)
  end


end

