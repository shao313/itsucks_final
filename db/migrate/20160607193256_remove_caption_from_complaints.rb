class RemoveCaptionFromComplaints < ActiveRecord::Migration

    def change
  add_column :complaints, :caption_id, :integer
  remove_column :complaints, :caption
end

end
