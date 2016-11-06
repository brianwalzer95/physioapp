class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.text :additional_info

      t.timestamps null: false
    end
  end
end
