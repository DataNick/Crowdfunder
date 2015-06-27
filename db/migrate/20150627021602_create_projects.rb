class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :goal
      t.text :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end