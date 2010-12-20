class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.string :name
      t.string :lastname
      t.string :rut
      t.string :phone
      t.string :mail
      t.string :address
      t.string :city
      t.integer :pais_id
      t.text :comment
      t.integer :type_room_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
