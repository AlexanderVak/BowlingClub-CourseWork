class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :total_score
      t.belongs_to :alley, foreign_key: true

      t.timestamps
    end
  end
end