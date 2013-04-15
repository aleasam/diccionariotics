class Categoria < ActiveRecord::Base
  attr_accessible :created_date, :descripcion, :nombre, :updated_date
  validates :nombre, :uniqueness => true

   has_many :terminos #, :inverse_of =>categorias
  
end


