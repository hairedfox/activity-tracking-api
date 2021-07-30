class CreateGoalActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :goal_activities do |t|
      t.references :goal, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.boolean :done, default: false
      t.integer :activity_type

      t.timestamps
    end

    add_index :goal_activities, %i[goal_id activity_id], unique: true
  end
end
