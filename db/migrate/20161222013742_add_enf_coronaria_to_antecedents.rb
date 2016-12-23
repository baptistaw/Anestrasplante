class AddEnfCoronariaToAntecedents < ActiveRecord::Migration
  def change
    add_column :antecedents, :enf_coronaria, :string, :default => 'No'
    add_column :antecedents, :hta, :string, :default => 'No'
    add_column :antecedents, :valvulopatia, :string, :default => 'No'
    add_column :antecedents, :arritmias_marcapaso, :string, :default => 'No'
    add_column :antecedents, :fumador, :string, :default => 'No'
    add_column :antecedents, :epoc, :string, :default => 'No'
    add_column :antecedents, :asma, :string, :default => 'No'
    add_column :antecedents, :nefropatia_uropatia, :string, :default => 'No'
    add_column :antecedents, :diabetes, :string, :default => 'No'
    add_column :antecedents, :hipotiroidismo, :string, :default => 'No'
    add_column :antecedents, :hipertiroidismo, :string, :default => 'No'
    add_column :antecedents, :rge_gastritis_ulcus, :string, :default => 'No'
    add_column :antecedents, :alergias, :string, :default => 'No'
    add_column :antecedents, :cirugia_abdominal, :string, :default => 'No'

  end
end
