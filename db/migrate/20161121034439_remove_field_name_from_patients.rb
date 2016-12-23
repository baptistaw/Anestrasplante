class RemoveFieldNameFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :f_nacimiento, :string
  end
end
