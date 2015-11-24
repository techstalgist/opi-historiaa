class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :correct_answer_id
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
