class CreateActualHepatics < ActiveRecord::Migration
  def change
    create_table :actual_hepatics do |t|
      t.string :s_hepatorrenal
      t.string :s_hepatopulmonar
      t.string :ht_pulmonar
      t.string :ht_portal
      t.string :ascitis
      t.string :esplenomeg
      t.string :varices_esof
      t.string :encefalopatia
      t.boolean :discrasia
      t.string :hiponatremia
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
