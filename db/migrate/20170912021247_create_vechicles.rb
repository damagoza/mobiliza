class CreateVechicles < ActiveRecord::Migration
  def change
    create_table :vechicles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :type_vehicle, index: true, foreign_key: true
      t.string :model

      t.timestamps null: false
    end
  end
end
