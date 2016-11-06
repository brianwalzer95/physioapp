class CreatePhysios < ActiveRecord::Migration
  def change
    create_table :physios do |t|
      t.string :name
      t.date :dob
      t.string :profile_picture
      t.boolean :registered
      t.string :email
      t.integer :phone_number
      t.integer :service_id
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
