class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.references :record

      t.timestamps
    end
    add_index :tracks, :record_id
  end
end
