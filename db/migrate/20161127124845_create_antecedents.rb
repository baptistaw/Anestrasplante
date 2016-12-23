class CreateAntecedents < ActiveRecord::Migration
  def change
    create_table :antecedents do |t|
      t.boolean :enf_coronaria
      t.boolean :hta
      t.boolean :valvulopatia
      t.boolean :arritmias_marcapaso
      t.boolean :fumador
      t.boolean :epoc
      t.boolean :asma
      t.boolean :nefropatia_uropatia
      t.boolean :diabetes
      t.boolean :hipotiroidismo
      t.boolean :hipertiroidismo
      t.boolean :rge_gastritis_ulcus
      t.boolean :alergias
      t.boolean :cirugia_abdominal
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
