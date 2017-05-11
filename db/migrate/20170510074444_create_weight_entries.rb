class CreateWeightEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :weight_entries do |t|
      t.date :date, null: false
      t.references :user, foreign_key: true, null: false
      t.integer :weight, null: false
      t.integer :unit_id, default: 1
      t.float :bmi

      t.timestamps
    end
  end
end
