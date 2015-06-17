class CreateDataDays < ActiveRecord::Migration
  def change
    create_table :data_days do |t|
      t.integer :user_id
      t.date :day
      t.string :which_day
      t.datetime :in
      t.datetime :out
      t.datetime :fixed
      t.datetime :shift
      t.datetime :shift_mid
      t.string :off_type
      t.datetime :overtime
      t.datetime :overtime_mid
      t.datetime :use_substitute
      t.datetime :use_transfer
      t.datetime :substitute
      t.datetime :substitute_mid
      t.datetime :transfer
      t.datetime :transfer_mid
      t.datetime :overtime_sum
      t.datetime :absence
      t.text :comment

      t.timestamps null: false
    end
  end
end
