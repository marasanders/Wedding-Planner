class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :mailing_title
      t.string :first_name
      t.string :last_name
      t.string :spouse_first_name
      t.string :spouse_last_name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :relationship
      t.string :email
      t.string :spouse_email
      t.boolean :send_invitation
      t.string :gift_received
      t.boolean :thank_you_sent

      t.timestamps null: false
    end
  end
end
