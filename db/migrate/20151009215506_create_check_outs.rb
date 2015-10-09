class CreateCheckOuts < ActiveRecord::Migration
  def change
    create_table :check_outs do |t|
      t.string :name
      t.integer :quantity
      t.references :thing

      t.timestamps null: false
    end
  end
end
