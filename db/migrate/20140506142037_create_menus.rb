class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :address
      t.string :campus
      t.string :open

      t.timestamps
    end
  end
end
