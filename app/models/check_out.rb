class CheckOut < ActiveRecord::Base
  belongs_to :thing

  validates :quantity, numericality: { greater_than: 0 }
  validate :thing_has_available_quantity, on: :create

  after_create :notify_create

  def pending?
    completed_at.nil?
  end

  def self.pending
    where(completed_at: nil)
  end

  def complete
    update_attributes(completed_at: send(:current_time_from_proper_timezone))
    notify_complete
  end

  private

    def notify_create
      CheckOutNotificationJob.perform_later(self)
    end

    def notify_complete
      CheckOutNotificationJob.perform_later(self)
    end

    def thing_has_available_quantity
      errors.add :quantity, 'not available' if thing.available_quantity < quantity
    end
end
