class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.date :sales_date

      t.timestamps null: false
    end
  end
end
