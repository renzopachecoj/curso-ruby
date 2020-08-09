class CreatePageComments < ActiveRecord::Migration[5.2]
  def change
    create_table :page_comments do |t|
      t.text :message
      t.bigint :page_id
      t.text :page_type
      t.bigint :user_id
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
