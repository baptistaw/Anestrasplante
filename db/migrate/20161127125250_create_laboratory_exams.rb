class CreateLaboratoryExams < ActiveRecord::Migration
  def change
    create_table :laboratory_exams do |t|
      t.integer :hb
      t.integer :hto
      t.integer :plaquetas
      t.integer :gb
      t.integer :tp
      t.decimal :inr
      t.integer :fibrinogeno
      t.integer :aPTT
      t.decimal :glicemia
      t.decimal :azoemia
      t.decimal :creatininemia
      t.integer :na
      t.decimal :k
      t.decimal :albumina
      t.decimal :proteinas_totales
      t.integer :fa
      t.integer :tgo
      t.integer :tgp
      t.integer :bt
      t.integer :bd
      t.integer :bi
      t.integer :amilasemia
      t.string :hiv
      t.string :cmv
      t.string :vdrl
      t.decimal :tsh
      t.date :fecha_ultima_parac
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
