class AddAttachmentToPhysios < ActiveRecord::Migration
  def change
    add_column :physios, :cv, :string
  end
end
