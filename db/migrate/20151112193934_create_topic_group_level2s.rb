class CreateTopicGroupLevel2s < ActiveRecord::Migration
  def change
    create_table :level2_topic_groups do |t|
      t.references :level1_topic_group, index: true, foreign_key: true
      t.string :name
      t.date :start_year
      t.date :end_year

      t.timestamps null: false
    end
  end
end
