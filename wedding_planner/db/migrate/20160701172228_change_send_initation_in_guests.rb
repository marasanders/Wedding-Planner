class ChangeSendInitationInGuests < ActiveRecord::Migration
  def change
    change_column :guests, :send_invitation, :boolean, default: true
  end
end
