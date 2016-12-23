class AddIngresaListaToCorevaluations < ActiveRecord::Migration
  def change
    add_column :corevaluations, :ingresa_lista, :string, :default => 'No'
    add_column :corevaluations, :candidato_fastrack, :string, :default => 'No'
    add_column :corevaluations, :candidato_tranexamico, :string, :default => 'No'


  end
end
