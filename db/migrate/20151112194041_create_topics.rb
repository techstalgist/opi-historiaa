class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :level1_topic_group, index: true, foreign_key: true
      t.references :level2_topic_group, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
