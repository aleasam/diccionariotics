class NotificacionController < ApplicationController
	before_filter :authenticate_user!
	def index
      
   end

	def sendmail
      Notificacion.contacto.deliver
	 # Notificacion.deliver_contacto(recipient, subject, message)
     end
    
end
