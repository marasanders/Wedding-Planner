class Guest < ActiveRecord::Base
   has_many :place_cards, dependent: :destroy 
end
