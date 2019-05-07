# This migration comes from phcscriptcdn (originally 20170517064049)
class CreatePhcscriptcdnListingVersions < ActiveRecord::Migration[5.2]
  TEXT_BYTES = 1_073_741_823
  def change

    create_table :phcscriptcdn_listing_versions do |t|
      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.datetime :created_at
    end

    add_index :phcscriptcdn_listing_versions, %i(item_type item_id), :name => 'scriptcdnpro_listing_versions'

  end
end
