class Notificacion < ActionMailer::Base

 default :from => 'informacion000@gmail.com'# => *1 

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notificacion.contacto.subject
  #
  # def contacto
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
def contacto
    @solicitud = Solicitud.all
    mail(:to =>'aleasam@gmail.com', :subject => "Solicutud de termino")
    headers['X-MC-GoogleAnalytics'] = "gmail.com"
    headers['X-MC-Tags'] = "contacto"
end


    def welcome
   
    mail(:to =>'aleasam@gmail.com', :subject => "Solicutud de termino")
    headers['X-MC-GoogleAnalytics'] = "gmail.com"
    headers['X-MC-Tags'] = "welcome"


end
  	  
  
end
