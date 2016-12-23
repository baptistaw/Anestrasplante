class RemoveEnfCoronariaFromAntecedents < ActiveRecord::Migration
  def change
    remove_column :antecedents, :enf_coronaria, :boolean
    remove_column :antecedents, :hta, :boolean
    remove_column :antecedents, :valvulopatia, :boolean
    remove_column :antecedents, :arritmias_marcapaso, :boolean
    remove_column :antecedents, :fumador, :boolean
    remove_column :antecedents, :epoc, :boolean
    remove_column :antecedents, :asma, :boolean
    remove_column :antecedents, :nefropatia_uropatia, :boolean
    remove_column :antecedents, :diabetes, :boolean
    remove_column :antecedents, :hipotiroidismo, :boolean
    remove_column :antecedents, :hipertiroidismo, :boolean
    remove_column :antecedents, :rge_gastritis_ulcus, :boolean
    remove_column :antecedents, :alergias, :boolean
    remove_column :antecedents, :cirugia_abdominal, :boolean


  end
end
