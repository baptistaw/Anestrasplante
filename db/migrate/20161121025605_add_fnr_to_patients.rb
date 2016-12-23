class AddFnrToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :fnr, :string
  end
end
