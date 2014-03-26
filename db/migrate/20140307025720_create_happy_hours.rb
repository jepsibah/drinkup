class CreateHappyHours < ActiveRecord::Migration
  def change
    create_table :happy_hours do |t|

      t.integer :place_id
      t.integer :start_time
      t.integer :end_time
      t.string :day
      t.text :deal

      t.timestamps
    end
  end
end
