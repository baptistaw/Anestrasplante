class AddPrestadorToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :prestador, :string
  end
end
