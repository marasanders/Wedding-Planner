class ChangeThankYouSentInGuests < ActiveRecord::Migration
  def change
    change_column :guests, :thank_you_sent, :boolean, default: false
  end
end
