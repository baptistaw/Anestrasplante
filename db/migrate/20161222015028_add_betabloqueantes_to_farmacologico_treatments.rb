class AddBetabloqueantesToFarmacologicoTreatments < ActiveRecord::Migration
  def change
    add_column :farmacologico_treatments, :betabloqueantes, :string, :default => 'No'
    add_column :farmacologico_treatments, :bloqueantes_calcio, :string, :default => 'No'
    add_column :farmacologico_treatments, :stringieca, :string, :default => 'No'
    add_column :farmacologico_treatments, :diureticos, :string, :default => 'No'
    add_column :farmacologico_treatments, :colesteramina, :string, :default => 'No'
    add_column :farmacologico_treatments, :omeprazol, :string, :default => 'No'
    add_column :farmacologico_treatments, :antibioticos, :string, :default => 'No'




  end
end
