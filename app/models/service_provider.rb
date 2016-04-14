class ServiceProvider < ActiveRecord::Base

	has_one :resume
  has_many :services

	  before_save { email.downcase! }
  validates :username, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
 
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :password, length: { minimum: 6 }
  validates :verified, presence:   true
  validates :postalcode , presence:   true

end

