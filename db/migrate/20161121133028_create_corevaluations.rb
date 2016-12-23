class CreateCorevaluations < ActiveRecord::Migration
  def change
    create_table :corevaluations do |t|
      t.string :causa_hepatopatia
      t.integer :peso
      t.integer :talla
      t.integer :pxif
      t.integer :meld
      t.integer :melde
      t.string :child
      t.string :asa
      t.text :maximos_riesgos
      t.boolean :ingresa_lista, :default => 'No'
      t.text :causa_no_ingreso
      t.text :estudios_pendientes
      t.boolean :candidato_fastrack, :default => 'No'
      t.boolean :candidato_tranexamico, :default => 'No'

      t.timestamps null: false
    end
  end
end
