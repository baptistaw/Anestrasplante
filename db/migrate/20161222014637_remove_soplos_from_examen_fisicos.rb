class RemoveSoplosFromExamenFisicos < ActiveRecord::Migration
  def change
    remove_column :examen_fisicos, :soplos, :boolean
    remove_column :examen_fisicos, :flapping, :boolean

  end
end
