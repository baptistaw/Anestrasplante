class AddSoplosToExamenFisicos < ActiveRecord::Migration
  def change
    add_column :examen_fisicos, :soplos, :string, :default => 'No'
    add_column :examen_fisicos, :flapping, :string, :default => 'No'


  end
end
