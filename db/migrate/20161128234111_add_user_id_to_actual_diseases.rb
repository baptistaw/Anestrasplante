class AddUserIdToActualDiseases < ActiveRecord::Migration
  def change
    add_column :actual_diseases, :user_id, :integer
  end
end
