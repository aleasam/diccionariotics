class HomeController < ApplicationController
  def index
  end


  def buscar	
  	@nombre=params[:q].downcase  #pasa a minuscula el parametro de la busqueda
    encontro=false
  	
  	if (@nombre!="") 
        
         @nombre=@nombre.mb_chars.decompose.scan(/[a-zA-Z0-9]/).join    
  	 	   @terminos=Termino.where("lower(nombre)like ?", "%#{@nombre}%" )
         
         #raise "prueba de #{@nombre}"
         if(@terminos.all!=[])          
          #raise "busqueda con tilde #{@nombre}"
          respond_to do |format|
                  format.html # index.html.erb
                  format.json { render json: @terminos }
                end
          #render "buscar", :message => 'El termino se encuentra!' 

         else 
          # si el termino a buscar tiene tilde se la quita 
          @nombre=@nombre.mb_chars.decompose.scan(/[a-zA-Z0-9]/).join  


          @aux_de_terminos=Termino.all
            @aux_de_terminos.each do |termino|
              #raise "prueba de #{termino.nombre}"
              #quita la tilde de cada termino en la base de datos 
              termino.nombre=termino.nombre.mb_chars.decompose.scan(/[a-zA-Z0-9]/).join

              # se compara con el termino a buscar todo en minuscula y sin tildes
              if termino.nombre.downcase==@nombre
                #envia como parametro el termino original de db con tilde 
                @terminos=[Termino.find(termino.id)]
                #raise "lo encontro con tilde #{termino.nombre.downcase}"
                encontro=true
                respond_to do |format|
                  format.html # index.html.erb
                  format.json { render json: @terminos }
                end
                #render "buscar"
              end
            end
            if encontro==false # si no lo encontro ni con tildes 
              
              @solicitud=Solicitud.new
              @solicitud.nombre=params[:q]
              #raise "#{@solicitud.nombre}"
              render "solicitudes/new", :message => " El termino que busca no se encuentra registrado"
            end
         
        end
      else
  	    #raise "prueba de #{@nombre}"
        redirect_to root_path, :notice => "Ingrese un nombre valido!"

        #:index, @user, :message => 'Ingrese un nombre valido!'
         
       #@search=Termino.search(params[:q])
    end
      
  	
  	# 	render "agregar", :message => 'El termino no se encuentra!' 
    
   #    #render "buscar", :message => 'El termino no se encuentra!' 
   #  end
  end

## Método solicitudes 
  def agregar
      @solicitud = Solicitud.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @solicitud }
      end
  end  
  

end