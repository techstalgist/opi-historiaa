class AddUserRefToResponseSets < ActiveRecord::Migration
  def change
      add_reference :response_sets, :user, index: true, foreign_key: true
  end
end
