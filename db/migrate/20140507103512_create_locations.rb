class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :menu, index: true
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
