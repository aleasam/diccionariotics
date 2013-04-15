class Solicitud < ActiveRecord::Base
  attr_accessible  :nombre
  validates_presence_of :nombre, :with => /^[a-zA-Z\d ]*$/i,:message => "Solo puede contener Numeros o letras."
  validates :nombre,:uniqueness =>{:case_sensitive => false, :message=>"Ya se ha hecho la solicitud del Termino %{value} "}


after_create :send_welcome


private

  def send_welcome
    unless  Rails.env != 'test'
      Notificacion.welcome.deliver
    end
  end

 end
