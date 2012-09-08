class AddPlaceIdToCheckIns < ActiveRecord::Migration
  def change
    add_column :check_ins, :place_id, :integer
  end
end
