class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, :dependent => :destroy
  has_many :complaints, :dependent => :destroy
  has_many :sucks, :dependent => :destroy
  has_many :sucked_companies, :through => :sucks, :source => :complaint
  has_many :blacklists, :through => :sucks, :source => :complaint
  validates :username, :presence => true, :uniqueness => {:case_sensitive => false }

   before_validation :remove_spaces
   before_save :remove_spaces

  def remove_spaces
   self.username.strip
  end



end
