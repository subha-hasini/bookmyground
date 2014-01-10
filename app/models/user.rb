class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :password_digest
  before_save { self.email = email.downcase }
  validates :name, 
  		:presence => {:message => "Title can't be blank." },
       # :uniqueness => {:message => "Title already exists."},
        :length => { :maximum => 100, :message => "Must be less than 100 characters"}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, 
		:presence => {:message => "Title can't be blank." },
        :uniqueness => {:message => "Email already exists."},
        :format  =>   { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, 
  		:length => { minimum: 6 ,:message => "Password must be atleast 6" }
end	