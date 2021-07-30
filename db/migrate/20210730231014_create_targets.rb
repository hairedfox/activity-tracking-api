class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.references :goal_activity, null: false, foreign_key: true
      t.integer :expected_number

      t.timestamps
    end
  end
end
