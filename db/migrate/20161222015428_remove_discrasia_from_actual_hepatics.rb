class RemoveDiscrasiaFromActualHepatics < ActiveRecord::Migration
  def change
    remove_column :actual_hepatics, :discrasia, :boolean
  end
end
