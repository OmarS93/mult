class Author < ActiveRecord::Base
  atrr_accessible :name
  
  validates :name, :presence => true
  
  has_many :authorbooks
  has_many :books, :through => :authorbooks
end
