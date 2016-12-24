class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombre
      t.string :apellido
      t.string :ci
      t.date :f_ingreso
      t.string :f_nacimiento

      t.timestamps null: false
    end
  end
end
