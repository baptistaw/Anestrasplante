class CreateExamenFisicos < ActiveRecord::Migration
  def change
    create_table :examen_fisicos do |t|
      t.string :apertura_bucal
      t.string :mpt
      t.string :protesis
      t.string :cuello
      t.integer :pa_sistolica
      t.integer :pa_diastolica
      t.integer :fc
      t.boolean :soplos
      t.string :pp
      t.string :tiroides
      t.string :reperes_vvc
      t.string :red_venosa
      t.string :test_allen
      t.string :siquismo
      t.boolean :flapping
      t.string :estado_nutricional
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
