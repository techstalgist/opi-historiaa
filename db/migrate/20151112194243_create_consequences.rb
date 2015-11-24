class CreateConsequences < ActiveRecord::Migration
  def change
    create_table :consequences do |t|
      t.references :topic, index: true, foreign_key: true
      t.string :text

      t.timestamps null: false
    end
  end
end
