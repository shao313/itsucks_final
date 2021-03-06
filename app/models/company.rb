class Company < ActiveRecord::Base
  has_many :complaints, :class_name => "Complaint", :foreign_key => "company_id", :dependent => :destroy
  has_many :haters, :through => :complaints, :source => :user
  has_many :flip_offs, :through => :complaints, :source => :sucks
  validates :company_name, :presence => true, :uniqueness => {:case_sensitive => false }
  before_validation :remove_spaces
  before_save :remove_spaces

  def remove_spaces
   self.company_name.strip
  end

end
