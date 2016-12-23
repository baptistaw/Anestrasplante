class AddDiscrasiaToActualHepatics < ActiveRecord::Migration
  def change
    add_column :actual_hepatics, :discrasia, :string, :default => 'No'
  end
end
