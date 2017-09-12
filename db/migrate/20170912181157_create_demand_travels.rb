class CreateDemandTravels < ActiveRecord::Migration
  def change
    create_table :demand_travels do |t|
      t.references :user, index: true, foreign_key: true
      t.references :offer_travel, index: true, foreign_key: true
      t.boolean :accept
      t.boolean :state

      t.timestamps null: false
    end
  end
end
