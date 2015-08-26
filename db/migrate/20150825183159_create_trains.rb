class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :to
      t.string :from
      t.date :date
      t.integer :number_seats
      t.time :leaving_time
      t.time :arrival_time

      t.timestamps null: false
    end
  end
end
