require 'bcrypt'
class User < ActiveRecord::Base
	has_many :posts
	has_secure_password

	has_attached_file :avatar, :styles => { 
  	:medium => "300x300>", 
  	:thumb => "100x100>" }, 
  	:default_url => "/images/:style/missing.png"
  
  validates_attachment_content_type :avatar, { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
