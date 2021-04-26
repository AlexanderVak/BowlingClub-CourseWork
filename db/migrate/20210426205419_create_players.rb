class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end