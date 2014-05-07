class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.references :menu, index: true
      t.string :fi
      t.string :en

      t.timestamps
    end
  end
end
