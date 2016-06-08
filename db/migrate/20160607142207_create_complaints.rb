class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.text :caption
      t.text :body
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.integer :user_id
      t.integer :company_id

      t.timestamps

    end
  end
end
