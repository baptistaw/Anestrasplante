class AddFNacimientoToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :f_nacimiento, :date
  end
end
