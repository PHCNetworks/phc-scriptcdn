# This migration comes from phcscriptcdn (originally 20170509002355)
class CreatePhcscriptcdnFriendlyIdSlugs < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_friendly_id_slugs do |t|
      t.string   :slug,           :null => false
      t.integer  :sluggable_id,   :null => false
      t.string   :sluggable_type, :limit => 50
      t.string   :scope
      t.datetime :created_at
    end

    add_index :phcscriptcdn_friendly_id_slugs, :sluggable_id
    add_index :phcscriptcdn_friendly_id_slugs, [:slug, :sluggable_type], name: 'scriptcdn_fri_id_slugable_type', length: { slug: 140, sluggable_type: 50 }
    add_index :phcscriptcdn_friendly_id_slugs, [:slug, :sluggable_type, :scope], name: 'scriptcdn_fri_id_slugable_scope_type', length: { slug: 70, sluggable_type: 50, scope: 70 }, unique: true
    add_index :phcscriptcdn_friendly_id_slugs, :sluggable_type

  end
end
