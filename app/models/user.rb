class User < ActiveRecord::Base

  validates :rating, :inclusion => 1..5 #between 1 to 5
	validates :username, presence: true, 
		      uniqueness: { case_sensitive: false },
			  length: {minimum: 3, maximum: 25}

	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #tested using http://rubular.com
	validates :email, presence: true, length: {maximum: 105},
			  uniqueness: { case_sensitive: false },
			  format: {with: VALID_EMAIL_REGEX}

	has_secure_password

end