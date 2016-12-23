class RemoveSHepatorrenalFromAntecedentHepatics < ActiveRecord::Migration
  def change
    remove_column :antecedent_hepatics, :s_hepatorrenal, :boolean
    remove_column :antecedent_hepatics, :s_hepatopulmonar, :boolean
    remove_column :antecedent_hepatics, :ht_pulmonar, :boolean
    remove_column :antecedent_hepatics, :ht_portal, :boolean
    remove_column :antecedent_hepatics, :ascitis, :boolean
    remove_column :antecedent_hepatics, :esplenomeg, :boolean
    remove_column :antecedent_hepatics, :varices_esof, :boolean
    remove_column :antecedent_hepatics, :encefalopatia, :boolean
    remove_column :antecedent_hepatics, :discrasia, :boolean
    remove_column :antecedent_hepatics, :hiponatremia, :boolean

  end
end
