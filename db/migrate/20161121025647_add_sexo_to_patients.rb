class AddSexoToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :sexo, :string
  end
end
