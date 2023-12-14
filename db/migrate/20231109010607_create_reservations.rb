class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :full_name, null: false
      t.integer :response, null: false
      t.string :phone
      t.string :address_one
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :passcode
      
      t.boolean :non_meat
      t.boolean :non_gluten

      t.timestamps
    end
  end
end
