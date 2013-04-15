class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nombre
      t.string :descripcion
      t.date :created_date
      t.date :updated_date

      t.timestamps
    end
  end
end
