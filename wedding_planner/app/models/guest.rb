class Guest < ActiveRecord::Base
  validates :mailing_title, :last_name, presence: true
   has_many :place_cards, dependent: :destroy
end
