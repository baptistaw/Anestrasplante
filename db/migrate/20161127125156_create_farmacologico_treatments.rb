class CreateFarmacologicoTreatments < ActiveRecord::Migration
  def change
    create_table :farmacologico_treatments do |t|
      t.boolean :betabloqueantes
      t.boolean :bloqueantes_calcio
      t.boolean :stringieca
      t.boolean :diureticos
      t.boolean :colesteramina
      t.boolean :omeprazol
      t.boolean :antibioticos
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
