class CreateUserAuthorities < ActiveRecord::Migration
  def change
    create_table :user_authorities do |t|
      t.integer :user_id
      t.boolean :reporting
      t.boolean :management

      t.timestamps null: false
    end
  end
end
