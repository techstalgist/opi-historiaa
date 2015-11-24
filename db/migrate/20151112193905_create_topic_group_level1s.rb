class CreateTopicGroupLevel1s < ActiveRecord::Migration
  def change
    create_table :level1_topic_groups do |t|
      t.references :era, index: true, foreign_key: true
      t.string :name
      t.date :start_year
      t.date :end_year

      t.timestamps null: false
    end
  end
end
