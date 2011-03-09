class HomeController < ApplicationController
  def index
    @type_rooms = TypeRoom.all
    @countries = Country.all
    @reservation = Reservation.new
    @titulo = "Premium Apart Hotel Urban Suites - Hotel of Chile - Apartment Hotel in Santiago de Chile"
    @descripcion = "En Urban Suites nos detacamos por tener una excelente ubicación, estacionamientos, modernos departamentos, wifi en todas las suites, etc. Conózcanos ..."
  end
    
  def departamentos
    @reservation = Reservation.new
    @titulo = "Premium Apart Hotel Urban Suites - Departamentos de uno y dos dormitorios"
    @descripcion = "En Urban Suites tenemos modernos y comodos departamentos de uno y dos dormitorios completamente equipados con wifi, tv cable, aire acondicionado, etc."
    render :layout => 'seccion'
  end
  
  def servicios
    @reservation = Reservation.new
    @titulo = "Apart Hotel Urban Suites ofrece el mejor servicio a sus clientes."
    @descripcion = "Urban Suites disponemos de estacionamiento, wifi, desayuno, lavandería, piscina en azotea, gimnasio, vehículo propio para el traslado de pasajeros, etc"
    render :layout => 'seccion'
  end
  
  def ubicacion
    @titulo = "Apart Hotel Urban Suites ubicado en Providencia con Ricardo Lyon en Santiago de Chile"
    @descripcion = "Nos encontramos en una privilegiada ubicación en pleno corazón de Providencia, a un paso del metro, restaurantes, bancos, supermercados, etc. Conózcanos ..."
    render :layout => 'seccion'
  end
  
  def reservas
    @reservation = Reservation.new
    @type_rooms = TypeRoom.all
    @countries = Country.all
    @titulo = "Realiza tu reserva en Apart Hotel Urban Suites"
    @descripcion = "En Urban Suites has tu reserva y te responderemos a la brevedad."
    render :layout => 'seccion'
  end 
  
  def contacto
    @contact = Contact.new
    @titulo = "Contacto con Apart Hotel Urban Suites"
    @descripcion = "Contáctese con nosotros te responderemos a la brevedad."
    render :layout => 'seccion'
  end 
  
  def reserva
    @reservation = Reservation.new(params[:reservation])
    @locale = params[:locale]
    if @reservation.save
      Notifier.deliver_reserva(@reservation)
    end    
  end
  
  def contact
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notifier.deliver_contacto(@contact)
    end
  end  
  
end
