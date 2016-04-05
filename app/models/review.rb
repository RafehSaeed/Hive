class Review < ActiveRecord::Base
	belongs_to :buisness
	has_one	   :serviceprovider
  #buisness id automatically generate no need for validation
  validates :rating, presence:   true, length: { maximum: 3}
  #date automatically generated no need for format validation
  validates :date, presence:   true    
  validates :service_provider_id, presence:   true  
  validate :validate_service_provider_id


 private

 def validate_service_provider_id
    errors.add(:service_provider_id, "is invalid") unless ServiceProvider.exists?(self.service_provider_id)
  end

end
