class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.integer :table
      t.datetime :datetime
      t.integer :guests

      t.timestamps
    end
    add_index :bookings, [:user_id, :created_at]
  end
end
