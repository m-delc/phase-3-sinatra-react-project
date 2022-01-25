class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone_number
      t.string :time
      t.integer :restaurant_id
    end
  end
end
