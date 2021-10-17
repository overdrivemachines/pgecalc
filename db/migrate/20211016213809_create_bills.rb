class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :amount, precision: 8, scale: 2
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
