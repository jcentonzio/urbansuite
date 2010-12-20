class CreateTypeRooms < ActiveRecord::Migration
  def self.up
    create_table :type_rooms do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :type_rooms
  end
end
