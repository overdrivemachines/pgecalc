class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name, limit: 30, null: false
      t.date :start_date, null: false
      t.date :end_date
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
