class AgregarCampoReserva < ActiveRecord::Migration
  def self.up
    add_column :reservations, :arrived, :date
    add_column :reservations, :output, :date
  end

  def self.down
    remove_column :reservations, :arrived
    remove_column :reservations, :output
  end
end
