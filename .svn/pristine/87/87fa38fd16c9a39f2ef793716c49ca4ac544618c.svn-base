class TerminosController < PrivadoController
  before_filter :authenticate_user!
  # GET /terminos
  # GET /terminos.json
  def index
    @terminos = Termino.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @terminos }
    end
  end

  # GET /terminos/1
  # GET /terminos/1.json
  def show
    @termino = Termino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @termino }
    end
  end

  # GET /terminos/new
  # GET /terminos/new.json
  def new

    @termino = Termino.new
    @termino.nombre=params[:nombre]
   # raise #{@termino.nombre}
    

     
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @termino }
    end
  end

  # GET /terminos/1/edit
  def edit
    @termino = Termino.find(params[:id])
  end

  # POST /terminos
  # POST /terminos.json
  def create
    @termino = Termino.new(params[:termino])

    # if @termino.nombre=nil?
    #   :message "No puede tener espacios en blanco"

    respond_to do |format|
      if @termino.save
        @solicitud = Solicitud.find_by_nombre(@termino.nombre)
        @solicitud.destroy

        format.html { redirect_to @termino, notice: 'Termino fue creado exitosamente.' }
        format.json { render json: @termino, status: :created, location: @termino }
      else
        format.html { render action: "new" }
        format.json { render json: @termino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /terminos/1
  # PUT /terminos/1.json
  def update
    @termino = Termino.find(params[:id])

    respond_to do |format|
      if @termino.update_attributes(params[:termino])
        format.html { redirect_to @termino, notice: 'El termino se ha actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @termino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminos/1
  # DELETE /terminos/1.json
  def destroy
    @termino = Termino.find(params[:id])
    @termino.destroy

    respond_to do |format|
      format.html { redirect_to terminos_url }
      format.json { head :no_content }
    end
  end


  def buscar  
    @nombre=params[:q].downcase  #pasa a minuscula el parametro de la busqueda
    raise "prueba de #{@nombre}"
    encontro=false
    
    if (@nombre!="") 
        
         @nombre=@nombre.mb_chars.decompose.scan(/[a-zA-Z0-9]/).join    
         @terminos=Termino.where("lower(nombre)like ?", "%#{@nombre}%" )
         
         #raise "prueba de #{@nombre}"
         if(@terminos.all!=[])          
          #raise "busqueda con tilde #{@nombre}"
          render "terminos/listar", :message => 'El termino se encuentra!' 

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
                render "terminos/listar"
              end
            end
            if encontro==false # si no lo encontro ni con tildes 
              
              @solicitud=Solicitud.new
              @solicitud.nombre=params[:q]
              #raise "#{@solicitud.nombre}"
            end
         
        end
      else
        #raise "prueba de #{@nombre}"
        redirect_to terminos_path, :notice => "Ingrese un nombre valido!"

        #:index, @user, :message => 'Ingrese un nombre valido!'
         
       #@search=Termino.search(params[:q])
    end
      
    
    #   render "agregar", :message => 'El termino no se encuentra!' 
    
   #    #render "buscar", :message => 'El termino no se encuentra!' 
   #  end
  end

end
