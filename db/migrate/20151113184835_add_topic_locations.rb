class AddTopicLocations < ActiveRecord::Migration
  def change
    create_table :topic_locations do |t|
      t.belongs_to :topic, index: true
      t.belongs_to :location, index: true
      t.timestamps null: false
    end
  end
end
