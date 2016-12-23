class RemoveBetabloqueantesFromFarmacologicoTreatments < ActiveRecord::Migration
  def change
    remove_column :farmacologico_treatments, :betabloqueantes, :boolean
    remove_column :farmacologico_treatments, :bloqueantes_calcio, :boolean
    remove_column :farmacologico_treatments, :stringieca, :boolean
    remove_column :farmacologico_treatments, :diureticos, :boolean
    remove_column :farmacologico_treatments, :colesteramina, :boolean
    remove_column :farmacologico_treatments, :omeprazol, :boolean
    remove_column :farmacologico_treatments, :antibioticos, :boolean


  end
end
