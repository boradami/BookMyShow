class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :language
      t.string :movie_type
      t.string :duration
      t.datetime :release_date
      
      t.timestamps
    end
  end
end
