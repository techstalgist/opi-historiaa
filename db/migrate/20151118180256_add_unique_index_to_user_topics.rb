class AddUniqueIndexToUserTopics < ActiveRecord::Migration
  def change
    add_index :user_topics, [:user_id, :topic_id], unique: true
  end
end
