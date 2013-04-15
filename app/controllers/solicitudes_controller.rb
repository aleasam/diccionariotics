class SolicitudesController < ApplicationController
  #before_filter :authenticate_user!
 
    # GET /solicitudes/1
  # GET /solicitudes/1.json
  def show
    @solicitud = Solicitud.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solicitud }
    end
  end

  # GET /solicitudes/new
  # GET /solicitudes/new.json
  def new
    @solicitud = Solicitud.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solicitud }
    end
  end

  # POST /solicitudes
  # POST /solicitudes.json
  def create
    @solicitud = Solicitud.new(params[:solicitud])
    
    

    respond_to do |format|
      if @solicitud.save
        Notificacion.contacto.deliver
        format.html { redirect_to root_path, notice: "Solicitud de #{@solicitud.nombre} fue realizada exitosamente." }
        format.json { render json: @solicitud, status: :created, location: @solicitud }
      else
        format.html { render action: "new" }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solicitudes/1
  # PUT /solicitudes/1.json
 

  # DELETE /solicitudes/1
  # DELETE /solicitudes/1.json
  def destroy
    @solicitud = Solicitud.find(params[:id])
    @solicitud.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
  end
 end
end
