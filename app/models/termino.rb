class Termino < ActiveRecord::Base
  attr_accessible :categoria_id, :created_date, :descripcion_d, :descripcion_r, :user_id, :nombre, :updated_date
  	validates_presence_of :nombre,:descripcion_d, :descripcion_r,:with => /^[a-zA-Z\d ]*$/i,:message => "Solo puede contener Numeros o letras."
  	validates :nombre,:uniqueness =>{:case_sensitive => false, :message=> " %{value} ya se encuentra registrado"}
  	belongs_to :categoria #, :inverse_of => termino
  	belongs_to :user #, :inverse_of => experto
end
