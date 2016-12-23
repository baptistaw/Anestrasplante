class AddProcedenciaToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :procedencia, :string
  end
end
