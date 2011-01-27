class AgregarCampoReservations < ActiveRecord::Migration
  def self.up
    add_column :reservations, :number_pass, :integer
  end

  def self.down
    remove_column :reservations, :number_pass
  end
end
