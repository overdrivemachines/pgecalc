class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :abbreviation, limit: 5
      t.string :address

      t.timestamps
    end
    add_index :properties, :abbreviation, unique: true
  end
end
