class Buisness < ActiveRecord::Base
	  #has_secure_password
      has_many :reviews, dependent: :destroy
      before_save { email.downcase! }
 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
 
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :password, length: { minimum: 8}
  validates :buisnessname , presence: true 
  validates :username , presence: true , length: { minimum: 4 }
  validates :address , presence: true
end
