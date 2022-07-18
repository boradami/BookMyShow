class AddCinemaReferenceToMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :cinema
  end
end
