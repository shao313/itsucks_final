class Caption < ActiveRecord::Base
  has_many :complaints
  validates :name, :presence => true
end
