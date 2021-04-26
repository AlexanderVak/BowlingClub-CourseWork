class CreateStaff < ActiveRecord::Migration[6.1]
  def change
    create_table :staff do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :position
      t.date :employment_date
      t.float :experience

      t.timestamps
    end
  end
end
