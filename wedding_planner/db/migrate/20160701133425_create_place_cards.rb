class CreatePlaceCards < ActiveRecord::Migration
  def change
    create_table :place_cards do |t|
      t.string :name
      t.integer :table_number
      t.boolean :print
      t.references :guest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
