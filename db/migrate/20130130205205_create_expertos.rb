class CreateExpertos < ActiveRecord::Migration
  def change
    create_table :expertos do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :cargo
      t.string :psw
      t.date :created_date
      t.date :updated_date

      t.timestamps
    end
  end
end
