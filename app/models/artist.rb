class Artist < ActiveRecord::Base
  includes Image
  
  validates :name, presence: true

  has_many :songs

end
