class AddCompletedAtToCheckOuts < ActiveRecord::Migration
  def change
    add_column :check_outs, :completed_at, :datetime, null: true
  end
end
