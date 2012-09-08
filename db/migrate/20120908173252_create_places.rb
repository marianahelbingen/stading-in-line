class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :occupation
      t.integer :waiting_time

      t.timestamps
    end
  end
end
