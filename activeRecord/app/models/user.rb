class User < ActiveRecord::Base
  has_secure_password
  has_many :records
  has_many :comments
  # attr_accessible :password, :username
end
