class CreatePhcscriptcdnUrlVersions < ActiveRecord::Migration[5.1]
  TEXT_BYTES = 1_073_741_823
  def change

    create_table :phcscriptcdn_connection_versions do |t|
      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.datetime :created_at
    end
    add_index :phcscriptcdn_connection_versions, %i(item_type item_id), :name => 'phcscriptcdn_connection_versions'

  end
end
