class MountainsController < ApplicationController

  def index
    @mountain = Mountain.new
    @mountains = Mountain.all
  end

  def create
    @mountain = Mountain.new(mountain_params)
    if @mountain.save

      redirect_to mountains_path
    else
      render :index
    end
  end

  private
  def mountain_params
    params.require(:mountain).permit(:name, :height)
  end

end