class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :physio_id
      t.integer :stars

      t.timestamps null: false
    end
  end
end
