class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.string :username
      t.integer :waiting_time
      t.integer :occupation

      t.timestamps
    end

    remove_column :places, :waiting_time, :occupation
  end
end
