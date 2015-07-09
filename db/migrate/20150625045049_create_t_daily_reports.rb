class CreateTDailyReports < ActiveRecord::Migration
  def change
    create_table :t_daily_reports do |t|
      t.integer :daily_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :history_id
      t.integer :user_id
      t.integer :monthly_id
      t.date :date
      t.string :day_of_week
      t.time :arrive_time
      t.time :leave_time
      t.time :predetermined_time
      t.time :shift_work
      t.time :shift_work_mid
      t.integer :take_off_type_id
      t.time :overtime_work
      t.time :overtime_work_mid
      t.time :use_substitute
      t.time :use_compensatory
      t.time :get_substitute
      t.time :get_substitute_mid
      t.time :get_compensatory
      t.string :get_compensatory_mid
      t.time :all_overtime
      t.time :take_off
      t.text :comment

      t.timestamps null: false
    end
  end
end
