class CreateScreens < ActiveRecord::Migration[6.0]
  def change
    create_table :screens do |t|
      t.string :screen_name
      t.integer :total_seats
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
