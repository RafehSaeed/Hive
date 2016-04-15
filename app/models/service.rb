class Service < ActiveRecord::Base


  belongs_to :serviceprovider

  validates :type, presence:   true
  validates :description, presence:   true

end
