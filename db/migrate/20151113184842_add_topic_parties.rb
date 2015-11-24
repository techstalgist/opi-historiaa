class AddTopicParties < ActiveRecord::Migration
  def change
    create_table :topic_parties do |t|
      t.belongs_to :topic, index: true
      t.belongs_to :party, index: true
      t.timestamps null: false
    end
  end
end
