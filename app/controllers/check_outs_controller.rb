class CheckOutsController < ApplicationController
  def create
    @check_out = CheckOut.new(check_out_params)
    
    if @check_out.save
      redirect_to root_path, notice: 'Your thing was checked out!'
    else
      redirect_to root_path, alert: 'Something is wrong!'
    end
  end

  def destroy
    @check_out = CheckOut.find(params[:id])
    
    if @check_out.destroy
      redirect_to root_path, notice: 'Your thing was returned!'
    else
      redirect_to root_path, alert: 'Something is wrong!'
    end
  end
  
  private
  
    def check_out_params
      params.require(:check_out).permit(:thing_id, :name, :quantity)
    end
end
