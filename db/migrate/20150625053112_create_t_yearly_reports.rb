class CreateTYearlyReports < ActiveRecord::Migration
  def change
    create_table :t_yearly_reports do |t|
      t.integer :yearly_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :user_id
      t.integer :year

      t.timestamps null: false
    end
  end
end
