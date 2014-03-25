class CheckInsController < ApplicationController
  def index
  end

  def new
    @check_in = CheckIn.new
  end

  def show
  end
end
