class ThingsController < ResourceController
  def index
    @things = Thing.all.order(:name)
    respond_with @thing
  end

  def new
    @thing = Thing.new
    respond_with @thing
  end

  def create
    @thing = Thing.create(thing_params)
    respond_with @thing
  end

  def show
    @thing = Thing.find(params[:id])
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
