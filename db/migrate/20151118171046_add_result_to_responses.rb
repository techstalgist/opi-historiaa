class AddResultToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :result, :boolean
  end
end
