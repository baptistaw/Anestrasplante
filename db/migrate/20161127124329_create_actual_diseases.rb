class CreateActualDiseases < ActiveRecord::Migration
  def change
    create_table :actual_diseases do |t|
      t.string :clase_funcional
      t.string :enf_coronaria
      t.integer :hta
      t.string :valvulopatia
      t.string :arritmias_marcapaso
      t.string :fumador
      t.string :epoc
      t.string :asma
      t.string :nefropatia_uropatia

      t.timestamps null: false
    end
  end
end
