class AddTopicRefToResponseSets < ActiveRecord::Migration
  def change
    add_reference :response_sets, :topic, index: true, foreign_key: true
  end
end
