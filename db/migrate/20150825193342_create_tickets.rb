class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :train_id
      t.float :price

      t.timestamps null: false
    end
  end
end
