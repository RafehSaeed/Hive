class Service < ActiveRecord::Base


  belongs_to :serviceprovider

  validates :description, presence:   true

end
