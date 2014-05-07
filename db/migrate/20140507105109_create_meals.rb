class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.referencesfi :menu
      t.Array :en

      t.timestamps
    end
  end
end
