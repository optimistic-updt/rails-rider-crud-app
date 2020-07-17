class RidersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :find_rider, only: [:edit, :show, :update, :destroy]

  
  def index
    @riders = Rider.all
    # render :json => @riders
  end
  
  def get_json
    @riders = Rider.all
    render :json => @riders
  end

  def new
    @rider = Rider.new
  end

  def create
    @rider = Rider.new(rider_params)
    if @rider.save
      redirect_to riders_path
    end
  end

  def edit
  end

  def update
    if @rider.update(rider_params)
      redirect_to riders_path
    end
  end

  def show
  end

  def destroy
    @rider.destroy
    redirect_to riders_path
  end


  private
  def rider_params
    params.require(:rider).permit(:firstname, :lastname, :number)
  end

  def find_rider
    @rider = Rider.find(params[:id])
  end
end
