class AddResponseSetRefToResponses < ActiveRecord::Migration
  def change
    add_reference :responses, :response_set, index: true, foreign_key: true
  end
end
