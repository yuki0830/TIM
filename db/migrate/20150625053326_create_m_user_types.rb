class CreateMUserTypes < ActiveRecord::Migration
  def change
    create_table :m_user_types do |t|
      t.integer :user_type_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.string :user_type
      t.integer :grant_id

      t.timestamps null: false
    end
  end
end
