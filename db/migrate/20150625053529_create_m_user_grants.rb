class CreateMUserGrants < ActiveRecord::Migration
  def change
    create_table :m_user_grants do |t|
      t.integer :grant_id
      t.timestamp :created_at
      t.timestamp :updated_at
      t.boolean :report_rd
      t.boolean :report_rw
      t.boolean :management_rd
      t.string :management_rw
      t.string :system_rd
      t.string :system_rw

      t.timestamps null: false
    end
  end
end
