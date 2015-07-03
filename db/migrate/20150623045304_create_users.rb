class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_kana
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
