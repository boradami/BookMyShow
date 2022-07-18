class AddCityReferenceToCinema < ActiveRecord::Migration[6.0]
  def change
    add_reference :cinemas, :city
  end
end
