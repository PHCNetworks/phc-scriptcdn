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

ActiveRecord::Schema.define(version: 20170423022446) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "phcscriptcdn_script_authors", force: :cascade do |t|
    t.string "authorfirstname"
    t.string "authorlastname"
    t.string "authorwebsite"
    t.string "authorgithub"
    t.string "authortwitter"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_extensions", force: :cascade do |t|
    t.string "scriptextensionname"
    t.text "scriptextensiondes"
    t.string "scriptextension"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_licences", force: :cascade do |t|
    t.string "lcncname"
    t.string "lcncdescript"
    t.text "lcncdescription"
    t.string "lcnccomgpl"
    t.string "lcncarvlfsf"
    t.string "lcncarvlosi"
    t.string "lcncarvlcopyfree"
    t.string "lcncarvldebian"
    t.string "lcncarvlfedora"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_listings", force: :cascade do |t|
    t.string "scripttitle"
    t.text "scriptdescription"
    t.string "descriptionsource"
    t.string "scriptwebsite"
    t.string "scripttwitter"
    t.string "scriptgithub"
    t.date "scriptinitialrelease"
    t.date "scriptlastestrelease"
    t.date "scriptbetarelease"
    t.date "scriptlastestreleasecdn"
    t.string "scriptstatus"
    t.integer "version_id"
    t.integer "licence_id"
    t.integer "author_id"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_phcscriptcdn_script_listings_on_author_id"
    t.index ["licence_id"], name: "index_phcscriptcdn_script_listings_on_licence_id"
    t.index ["version_id"], name: "index_phcscriptcdn_script_listings_on_version_id"
  end

  create_table "phcscriptcdn_script_urls", force: :cascade do |t|
    t.string "scripturl"
    t.date "scripturlrelease"
    t.date "scripturlcdnupdate"
    t.integer "listing_id"
    t.integer "version_id"
    t.integer "extension_id"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["extension_id"], name: "index_phcscriptcdn_script_urls_on_extension_id"
    t.index ["listing_id"], name: "index_phcscriptcdn_script_urls_on_listing_id"
    t.index ["version_id"], name: "index_phcscriptcdn_script_urls_on_version_id"
  end

  create_table "phcscriptcdn_script_versions", force: :cascade do |t|
    t.string "scriptversion"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_scriptcdn_authors", force: :cascade do |t|
    t.string "authorfirstname"
    t.string "authorlastname"
    t.string "authorwebsite"
    t.string "authorgithub"
    t.string "authortwitter"
    t.integer "main_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_authors_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_information", force: :cascade do |t|
    t.string "scripttitle"
    t.text "scriptdescription"
    t.string "scriptcategory"
    t.string "scriptwebsite"
    t.string "scripttwitter"
    t.string "scriptgithub"
    t.date "scriptinitialrelease"
    t.string "scriptlicence"
    t.string "scriptplatform"
    t.string "scriptstatus"
    t.integer "main_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_information_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_mains", force: :cascade do |t|
    t.string "scriptname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_scriptcdn_urls", force: :cascade do |t|
    t.string "scripturl"
    t.string "scripturlext"
    t.integer "main_id"
    t.string "user_id"
    t.string "membership_id"
    t.string "oganization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_urls_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_versions", force: :cascade do |t|
    t.string "versionnumber"
    t.integer "main_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_versions_on_main_id"
  end

end
