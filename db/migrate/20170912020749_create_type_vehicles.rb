class CreateTypeVehicles < ActiveRecord::Migration
  def change
    create_table :type_vehicles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
