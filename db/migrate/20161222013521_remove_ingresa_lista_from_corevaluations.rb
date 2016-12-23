class RemoveIngresaListaFromCorevaluations < ActiveRecord::Migration
  def change
    remove_column :corevaluations, :ingresa_lista, :boolean
    remove_column :corevaluations, :candidato_fastrack, :boolean
    remove_column :corevaluations, :candidato_tranexamico, :boolean


  end
end

