class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.references :offer_travel, index: true, foreign_key: true
      t.references :demand_travel, index: true, foreign_key: true
      t.boolean :state
      t.integer :calification_offer
      t.integer :calification_demand

      t.timestamps null: false
    end
  end
end
