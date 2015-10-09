class CheckOut < ActiveRecord::Base
  belongs_to :thing
  
  validates :quantity, numericality: { greater_than: 0 }
  validate :thing_has_available_quantity
  
  private
  
    def thing_has_available_quantity
      errors.add :quantity, 'not available' if thing.available_quantity < quantity
    end
end
