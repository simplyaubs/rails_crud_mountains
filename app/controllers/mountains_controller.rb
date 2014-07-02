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

  def show
    @mountain = Mountain.find(params[:id])
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])
    @mountain.update_attributes!(mountain_params)

    redirect_to mountains_path
  end

  private
  def mountain_params
    params.require(:mountain).permit(:name, :height)
  end

end