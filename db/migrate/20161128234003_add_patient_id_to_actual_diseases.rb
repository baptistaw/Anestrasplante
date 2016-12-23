class AddPatientIdToActualDiseases < ActiveRecord::Migration
  def change
    add_column :actual_diseases, :patient_id, :integer
  end
end
