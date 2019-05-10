# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_10_124332) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "phcaccounts_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "org_id"
    t.integer "role"
    t.index ["email"], name: "index_phcaccounts_users_on_email", unique: true
    t.index ["firstname"], name: "index_phcaccounts_users_on_firstname"
    t.index ["lastname"], name: "index_phcaccounts_users_on_lastname"
    t.index ["org_id"], name: "index_phcaccounts_users_on_org_id", unique: true
    t.index ["reset_password_token"], name: "index_phcaccounts_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_phcaccounts_users_on_username", unique: true
  end

  create_table "phcscriptcdn_author_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_author_versions"
  end

  create_table "phcscriptcdn_extension_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_ext_versions"
  end

  create_table "phcscriptcdn_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "scriptcdnpro_fri_id_slugable_scope_type", unique: true
    t.index ["slug", "sluggable_type"], name: "scriptcdnpro_fri_id_slugable_type"
    t.index ["sluggable_id"], name: "index_phcscriptcdn_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_phcscriptcdn_friendly_id_slugs_on_sluggable_type"
  end

  create_table "phcscriptcdn_licence_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_licence_versions"
  end

  create_table "phcscriptcdn_listing_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_listing_versions"
  end

  create_table "phcscriptcdn_script_authors", force: :cascade do |t|
    t.string "author_first_name"
    t.string "author_last_name"
    t.string "author_website"
    t.string "author_github"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_extensions", force: :cascade do |t|
    t.string "script_extension_name"
    t.text "script_extension_description"
    t.string "script_extension"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_licences", force: :cascade do |t|
    t.string "licence_name"
    t.text "licence_description"
    t.string "licence_compatible_gpl"
    t.string "licence_approval_fsf"
    t.string "licence_approval_osi"
    t.string "licence_approval_copyfree"
    t.string "licence_approval_debian"
    t.string "licence_approval_fedora"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_listings", force: :cascade do |t|
    t.string "script_tittle"
    t.text "script_description"
    t.string "script_source"
    t.string "script_website"
    t.string "script_github"
    t.date "script_initial_release"
    t.date "script_lastest_release"
    t.date "script_beta_release"
    t.date "script_lastest_release_cdn"
    t.string "script_status"
    t.string "slug"
    t.string "user_id"
    t.integer "licence_id"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_phcscriptcdn_script_listings_on_author_id"
    t.index ["licence_id"], name: "index_phcscriptcdn_script_listings_on_licence_id"
  end

  create_table "phcscriptcdn_script_urls", force: :cascade do |t|
    t.string "script_url"
    t.date "script_url_release"
    t.date "script_url_cdn_update"
    t.string "slug"
    t.string "user_id"
    t.integer "listing_id"
    t.integer "extension_id"
    t.integer "version_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["extension_id"], name: "index_phcscriptcdn_script_urls_on_extension_id"
    t.index ["listing_id"], name: "index_phcscriptcdn_script_urls_on_listing_id"
    t.index ["version_id"], name: "index_phcscriptcdn_script_urls_on_version_id"
  end

  create_table "phcscriptcdn_script_versions", force: :cascade do |t|
    t.string "script_version_number"
    t.string "slug"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_scriptversion_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_scriptversion_versions"
  end

  create_table "phcscriptcdn_url_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_url_versions"
  end

end
