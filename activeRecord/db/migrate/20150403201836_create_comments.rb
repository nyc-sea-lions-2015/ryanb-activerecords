class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user
      t.references :record

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :record_id
  end
end
