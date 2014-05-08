class CreateJoinTableTagUser < ActiveRecord::Migration
  def change
    create_join_table :tags, :users do |t|
      # t.index [:tag_id, :user_id]
      # t.index [:user_id, :tag_id]
    end
  end

  add_index :tags_users, [:tag_id, :user_id]
end
