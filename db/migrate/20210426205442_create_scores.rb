class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :splits
      t.integer :spares
      t.integer :strikes
      t.belongs_to :player, foreign_key: true

      t.timestamps
    end
  end
end