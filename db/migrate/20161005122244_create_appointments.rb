class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :location
      t.date :appoint_date
      t.integer :previous_appointment
      t.integer :physio_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
