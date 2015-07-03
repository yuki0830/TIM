class CreateTMonthlyReports < ActiveRecord::Migration
  def change
    create_table :t_monthly_reports do |t|
      t.integer :monthly_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :user_id
      t.integer :year_id
      t.integer :month
      t.time :total_work_time
      t.time :total_used_substitute
      t.time :total_used_compensatory

      t.timestamps null: false
    end
  end
end
