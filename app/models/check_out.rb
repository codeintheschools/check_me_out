class CheckOut < ActiveRecord::Base
  belongs_to :thing

  validates :quantity, numericality: { greater_than: 0 }
  validate :thing_has_available_quantity

  def pending?
    completed_at.nil?
  end

  def self.pending
    where(completed_at: nil)
  end

  def complete
    update_attributes(completed_at: send(:current_time_from_proper_timezone))
  end

  private

    def thing_has_available_quantity
      errors.add :quantity, 'not available' if thing.available_quantity < quantity
    end
end
