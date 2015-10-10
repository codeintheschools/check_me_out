class ThingsController < ResourceController
  before_action :load_thing, only: [:show, :edit, :update, :destroy]

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
    @check_outs = @thing.check_outs
    @check_outs = @check_outs.order('completed_at is null desc, completed_at desc, created_at desc')
  end

  def edit
  end

  def update
    @thing.update_attributes(thing_params)
    respond_with @thing
  end

  def destroy
    @thing.destroy
    respond_with @thing
  end

  private

    def load_thing
      @thing = Thing.find(params[:id])
    end

    def thing_params
      params.require(:thing).permit(:name, :quantity)
    end
end
