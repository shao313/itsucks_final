class Caption < ActiveRecord::Base
  has_many :complaints, :dependent => :destroy
  validates :name, :presence => true
end
