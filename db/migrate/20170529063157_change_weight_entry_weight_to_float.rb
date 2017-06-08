class ChangeWeightEntryWeightToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :weight_entries, :weight, :float
  end
end
