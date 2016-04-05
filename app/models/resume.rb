class Resume < ActiveRecord::Base

  belongs_to :serviceprovider



  validates :name, presence: true, length: { maximum: 30 }
 
  validates :phonenumber, presence:   true,
                    uniqueness: { case_sensitive: false }
  
  validates :age, presence: true , length: {maximum: 3}

  validates :service_provider_id , presence:true






end
