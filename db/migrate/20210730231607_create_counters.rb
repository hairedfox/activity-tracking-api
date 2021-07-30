class CreateCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :counters do |t|
      t.integer :quantity, default: 0
      t.string :unit, default: 'times'
      t.references :goal_activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
