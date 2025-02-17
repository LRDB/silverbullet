class CreateTimeslots < ActiveRecord::Migration[8.0]
  def change
    create_table :timeslots do |t|
      t.integer :table
      t.datetime :datetime
      t.integer :capacity

      t.timestamps
    end
  end
end
