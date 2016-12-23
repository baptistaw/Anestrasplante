class AddPatientIdToCorevaluations < ActiveRecord::Migration
  def change
    add_column :corevaluations, :patient_id, :integer
  end
end
