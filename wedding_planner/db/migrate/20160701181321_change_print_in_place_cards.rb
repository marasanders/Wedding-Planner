class ChangePrintInPlaceCards < ActiveRecord::Migration
  def change
    change_column :place_cards, :print, :boolean, default: true
  end
end
