class CreateKeyPoints < ActiveRecord::Migration
  def change
    create_table :key_points do |t|
      t.references :topic, index: true, foreign_key: true
      t.string :text

      t.timestamps null: false
    end
  end
end
