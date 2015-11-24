class CreateEras < ActiveRecord::Migration
  def change
    create_table :eras do |t|
      t.string :name
      t.date :start_year
      t.date :end_year

      t.timestamps null: false
    end
  end
end
