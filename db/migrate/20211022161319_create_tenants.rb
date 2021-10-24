class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :name, limit: 30
      t.date :move_in_date
      t.date :move_out_date
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
