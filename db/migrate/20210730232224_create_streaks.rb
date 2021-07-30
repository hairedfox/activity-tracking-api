class CreateStreaks < ActiveRecord::Migration[6.1]
  def change
    create_table :streaks do |t|
      t.integer :streak, default: 1
      t.datetime :achieved_at
      t.references :goal_activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
