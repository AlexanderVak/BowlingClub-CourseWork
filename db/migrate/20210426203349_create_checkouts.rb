class CreateCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :checkouts do |t|
      t.decimal :price, precision: 8, scale: 2
      t.integer :playtime
      t.datetime :order_time
      t.belongs_to :staff, foreign_key: true

      t.timestamps
    end
  end
end