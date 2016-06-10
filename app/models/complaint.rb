class Complaint < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :company, :class_name => "Company", :foreign_key => "company_id"
  belongs_to :caption, :class_name => "Caption", :foreign_key => "caption_id"
  has_many :comments, :class_name => "Comment", :foreign_key => "complaint_id", :dependent => :destroy
  has_many :sucks, :class_name => "Suck", :foreign_key => "complaint_id", :dependent => :destroy
  has_many :haters, :through => :sucks, :source => :user
  validates :company_id, :presence => true
  validates :user_id, :presence => true
  validates :body, :presence => true
  validates :caption, :presence => true
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader
end
