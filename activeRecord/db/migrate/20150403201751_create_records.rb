class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :album_title
      t.string :artist
      t.string :genre
      t.integer :release_year
      t.text :owner_opinion
      t.references :user

      t.timestamps
    end
    add_index :records, :user_id
  end
end
