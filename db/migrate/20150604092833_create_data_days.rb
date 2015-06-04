class CreateDataDays < ActiveRecord::Migration
  def change
    create_table :data_days do |t|
      t.date :day
      t.string :which-day
      t.datetime :in
      t.datetime :out
      t.datetime :fixed
      t.datetime :shift
      t.datetime :shift-mid
      t.string :off-type
      t.datetime :overtime
      t.datetime :overtime-mid
      t.datetime :use-substitute
      t.datetime :use-transfer
      t.datetime :substitute
      t.datetime :substitute-mid
      t.datetime :transfer
      t.datetime :transfer-mid
      t.datetime :overtime-sum
      t.datetime :absence
      t.text :comment

      t.timestamps null: false
    end
  end
end
