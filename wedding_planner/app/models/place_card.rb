class PlaceCard < ActiveRecord::Base
  belongs_to :guest
  belongs_to :user # NHO: I think this is unnecessary since a user has access to placecards through guests already
end
