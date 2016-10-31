class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :gmail
      t.string :phoneNum
      t.string :confirmationCode
      t.boolean :isConfirmed
      t.integer :affiliation

      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
