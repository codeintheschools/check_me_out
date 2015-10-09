class ThingsController < ApplicationController
  def index
    @things = Thing.all.order(:name)
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(thing_params)
    
    if @thing.save
      redirect_to things_path, notice: 'Your thing was created!'
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end
  
  private
  
    def thing_params
      params.require(:thing).permit(:name, :quantity)
    end
end
