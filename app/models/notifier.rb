class Notifier < ActionMailer::Base
  default_url_options[:host] = "www.urbansuites.cl"
  default :from => "Apart Hotel Urban Suites"
    
  def reserva(reserva)
    @reservation = reserva
    @recipient = reserva.mail
    attachments["logo.png"] = File.read("#{Rails.root}/public/images/logo.png")
    mail(:to =>"<reservasurbansuite@gmail.com>", :cc => "#{reserva.name} <#{reserva.mail}>", :subject => "Reserva desde el sitio web")
  end
  
   
    
# def recomendar_video(recipient, video)
#  recipients    recipient.correos
#    from          "sextube.cl <publiescortx@gmail.com>"
#    headers       "publiescortx@gmail.com"
#    subject       "Tu amigo " +  recipient.nombre + " te recomienda este video " + "..."
#    headers       "Reply-to" => "publiescortx@gmail.com"
#    body          :account => recipient, :video => video
#    content_type "text/html"   # Here's where the magic happens
#  end
  
    
end
