class Thing < ActiveRecord::Base
  has_many :check_outs, dependent: :destroy

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true

  def available?
    available_quantity > 0
  end

  def available_quantity
    quantity - check_out_quantity
  end

  def check_out_quantity
    check_outs.pending.pluck(:quantity).sum
  end
end
