class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.integer :price

      t.timestamps null: false
    end
  end
end
