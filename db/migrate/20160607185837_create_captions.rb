class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.text :name

      t.timestamps

    end
  end
end
