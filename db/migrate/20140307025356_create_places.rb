class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

      t.string :address
      t.string :neighborhood
      t.string :yelp

      t.timestamps
    end
  end
end
