# Static Pages Controller
require './app/jobs/sleeper'
class ParkingsController < ApplicationController
  def show
    @parking = Parking.find(params[:id])
  end

  def new
    @parking = Parking.new
  end

  def create
    @parking = Parking.new(parking_params)
    @parking.save

    if @parking.save
      Resque.enqueue(Sleeper, 5)

      flash[:notice] = 'Article was created.'
      redirect_to @parking
    else
      render 'new'
    end
  end

  private

  def parking_params
    params.require(:parking).permit(:address)
  end
end
