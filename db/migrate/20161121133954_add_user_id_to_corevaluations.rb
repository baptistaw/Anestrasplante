class AddUserIdToCorevaluations < ActiveRecord::Migration
  def change
    add_column :corevaluations, :user_id, :integer
  end
end
