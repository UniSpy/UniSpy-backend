class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :menu, index: true
      t.text :fi
      t.text :en

      t.timestamps
    end
  end
end
