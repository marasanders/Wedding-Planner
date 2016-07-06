class PlaceCard < ActiveRecord::Base
  belongs_to :guest
  belongs_to :user
end
