class CreateAntecedentHepatics < ActiveRecord::Migration
  def change
    create_table :antecedent_hepatics do |t|
      t.boolean :s_hepatorrenal
      t.boolean :s_hepatopulmonar
      t.boolean :ht_pulmonar
      t.boolean :ht_portal
      t.boolean :ascitis
      t.boolean :esplenomeg
      t.boolean :varices_esof
      t.boolean :encefalopatia
      t.boolean :discrasia
      t.boolean :hiponatremia
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
