class CreateDataMonths < ActiveRecord::Migration
  def change
    create_table :data_months do |t|
      t.integer :user_id
      t.integer :month

      t.timestamps null: false
    end
  end
end
