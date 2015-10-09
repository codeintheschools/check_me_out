class Thing < ActiveRecord::Base
  has_many :check_outs
  
  def available_quantity
    quantity - check_out_quantity
  end
  
  def check_out_quantity
    check_outs.pluck(:quantity).sum
  end
end
