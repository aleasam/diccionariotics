class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.string :nombre
      t.date :created_date

      t.timestamps
    end
  end
end
