class CreateComplementariosExams < ActiveRecord::Migration
  def change
    create_table :complementarios_exams do |t|
      t.string :ecg
      t.string :ecocardiograma
      t.string :ecodobutamina
      t.string :ergometria
      t.string :holter
      t.string :rxtx
      t.string :funcional_respiratorio
      t.text :comentarios
      t.integer :user_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
