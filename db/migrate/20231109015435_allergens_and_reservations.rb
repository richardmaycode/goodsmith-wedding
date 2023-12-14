class AllergensAndReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :allergens_reservations, id: false do |t|
      t.belongs_to :allergen
      t.belongs_to :reservation
    end
  end
end
