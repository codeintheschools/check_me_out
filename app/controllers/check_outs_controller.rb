class CheckOutsController < ResourceController
  def create
    @check_out = CheckOut.create(check_out_params)
    respond_with @check_out, location: root_path
  end

  def complete
    @check_out = CheckOut.find(params[:id])
    @check_out.complete
    respond_with @check_out, location: root_path
  end

  private

    def check_out_params
      params.require(:check_out).permit(:thing_id, :name, :quantity)
    end
end
