class CreateMTakeOffTypes < ActiveRecord::Migration
  def change
    create_table :m_take_off_types do |t|
      t.integer :take_off_type_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.string :take_off_type

      t.timestamps null: false
    end
  end
end
