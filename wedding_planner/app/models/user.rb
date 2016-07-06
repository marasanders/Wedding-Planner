class User < ActiveRecord::Base
   has_many :guests
     validates :username, presence: true
 end
