class Guest < ActiveRecord::Base
   # NHO: validations!
   validates :mailing_title, :last_name, presence: true
   has_many :place_cards, dependent: :destroy
   belongs_to :user

   # NHO: something to consider in the future might be to write some model methods to help with custom queries or
   # combining data to make a new property
   # i.e. an method that returns a guest's full name
   # or a method that finds all the guests that have not yet been sent an invite

end
