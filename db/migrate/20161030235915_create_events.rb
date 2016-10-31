class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.primary_key :id
      t.integer :expectedNum
      t.string :name
      t.float :ticketPrice
      t.text :description
      t.boolean :isLit
      t.integer :numAddedToCal
      t.integer :numCheckIn

      t.timestamps
    end
  end
end
