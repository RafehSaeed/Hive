class Category < ActiveRecord::Base

  has_many :services

  validates :name, presence: true, length: { maximum: 50 }
  validates :minimumwage, presence:true, length: { minimum: 3}

end


