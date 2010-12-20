class HomeController < ApplicationController
  def index
    @type_rooms = TypeRoom.all
    @countries = Country.all
    @reservation = Reservation.new
  end
  
  def servicios
    render :layout => 'seccion'
  end
  
  def ubicacion
    render :layout => 'seccion'
  end
  
  def reservas
    @reservation = Reservation.new
    @type_rooms = TypeRoom.all
    @countries = Country.all
    render :layout => 'seccion'
  end 
  
  def contacto
    @contact = Contact.new
    render :layout => 'seccion'
  end 
  
end
