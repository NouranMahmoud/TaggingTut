	class User < ActiveRecord::Base
 has_many :authentications, dependent: :destroy
 
  has_many :listings, :dependent => :delete_all
  has_many :reservations, :dependent => :delete_all

 include Clearance::User

 def self.create_with_auth_and_hash(authentication, auth_hash)
   user = self.create!(
     name: auth_hash["info"]["name"],
     email: auth_hash["extra"]["raw_info"]["email"],
     password: SecureRandom.base64
   )
   user.authentications << authentication
   return user
 end

 # grab fb_token to access Facebook for user data
 def fb_token
   x = self.authentications.find_by(provider: 'facebook')
   return x.token unless x.nil?
 end
end