class AddImage4ToComplaints < ActiveRecord::Migration
  def change
    add_column :complaints, :image_4, :string
  end
end
