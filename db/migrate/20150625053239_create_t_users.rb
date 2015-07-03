class CreateTUsers < ActiveRecord::Migration
  def change
    create_table :t_users do |t|
      t.integer :user_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :user_type_id
      t.string :user_name
      t.string :user_name_kana
      t.string :email
      t.string :phone
      t.text :location

      t.timestamps null: false
    end
  end
end
