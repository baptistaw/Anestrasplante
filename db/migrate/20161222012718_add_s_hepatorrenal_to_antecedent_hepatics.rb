class AddSHepatorrenalToAntecedentHepatics < ActiveRecord::Migration
  def change
    add_column :antecedent_hepatics, :s_hepatorrenal, :string, :default => 'No'
    add_column :antecedent_hepatics, :s_hepatopulmonar, :string, :default => 'No'
    add_column :antecedent_hepatics, :ht_pulmonar, :string, :default => 'No'
    add_column :antecedent_hepatics, :ht_portal, :string, :default => 'No'
    add_column :antecedent_hepatics, :ascitis, :string, :default => 'No'
    add_column :antecedent_hepatics, :esplenomeg, :string, :default => 'No'
    add_column :antecedent_hepatics, :varices_esof, :string, :default => 'No'
    add_column :antecedent_hepatics, :encefalopatia, :string, :default => 'No'
    add_column :antecedent_hepatics, :discrasia, :string, :default => 'No'
    add_column :antecedent_hepatics, :hiponatremia, :string, :default => 'No'

  end
end
