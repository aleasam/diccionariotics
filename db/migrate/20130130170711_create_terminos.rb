class CreateTerminos < ActiveRecord::Migration
  def change
    create_table :terminos do |t|
      t.string :nombre
      t.string :descripcion_r
      t.string :descripcion_d
      t.integer :categoria_id
      t.integer :user_id
      t.date :created_date
      t.date :updated_date

      t.timestamps
    end
  end
end
