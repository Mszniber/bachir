class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :post_ids
  has_many :posts
  RANSACKABLE_ATTRIBUTES = ["email"]
  def self.ransackable_attributes auth_object = nil
    RANSACKABLE_ATTRIBUTES + _ransackers.keys
  end			 
   def is_admin?
  	self.admin
  end
end
