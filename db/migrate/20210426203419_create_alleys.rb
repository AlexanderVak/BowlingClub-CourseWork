class CreateAlleys < ActiveRecord::Migration[6.1]
  def change
    create_table :alleys do |t|
      t.integer :number
      t.integer :status, default: 0
      t.belongs_to :checkout, foreign_key: true

      t.timestamps
    end
  end
end