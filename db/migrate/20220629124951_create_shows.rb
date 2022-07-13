class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.time    :show_start_time
      t.time    :show_end_time
      t.integer :amount
      t.references :screen, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true
      t.timestamps
    end
  end
end
