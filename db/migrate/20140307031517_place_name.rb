class PlaceName < ActiveRecord::Migration
  def change
  	change_table :places do |t|
  		t.string :name
  	end
  end
end
