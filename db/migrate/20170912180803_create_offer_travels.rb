class CreateOfferTravels < ActiveRecord::Migration
  def change
    create_table :offer_travels do |t|
      t.references :user, index: true, foreign_key: true
      t.references :vechicle, index: true, foreign_key: true
      t.float :coordenada_start
      t.float :coordenada_end
      t.string :name_start
      t.string :name_end
      t.boolean :state

      t.timestamps null: false
    end
  end
end
