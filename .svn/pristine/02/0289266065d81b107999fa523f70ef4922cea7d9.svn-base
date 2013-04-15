#class Notificacion < ActionMailer::Base
#   default from: "informacion000@gmail.com"

  

# def solicitud
#   recipients "aleasam@gmail.com"
#   from "informacion000@gmail.com"
#   subject     "Esto es una prueba de Notificacion de terminos"
#   body        "HOla Terminos"
# end


# def nueva_solicitud(solicitud = nil,  sent_at = Time.now)
#     @solicitud = solicitud
    
#     email = "informacion000@gmail.com"
#     correo_institucional = "aleasam@gmail.com"
#     correos_interesados = "aleasam@gmail.com"
#     subject = "Nueva solicitud de adiccion de termino #{solitud.nombre}."
#     @nombre_destinatario = "solicitudes Dicionario"

#       mail(:to => email_ciudadano,
#            :bcc => correo_institucional,
#            :reply_to => correo_institucional,
#   	       :subject => subject)

    
# end
# end


class Notificacion < ActionMailer::Base
  default :from => 'informacion000@gmail.com'
 
  def instructions
    @name = "alex"
    
    mail :to =>"aleasam@gmail.com", :subject => 'Instrucionnes'
  end
end
