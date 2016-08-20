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

ActiveRecord::Schema.define(version: 20160801032225) do

  create_table "phcscriptcdn_script_authors", force: :cascade do |t|
    t.string   "authorfirstname"
    t.string   "authorlastname"
    t.string   "authorwebsite"
    t.string   "authorgithub"
    t.string   "authortwitter"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "phcscriptcdn_script_extensions", force: :cascade do |t|
    t.string   "scriptextension"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "phcscriptcdn_script_licences", force: :cascade do |t|
    t.string   "lcncname"
    t.string   "lcnccomgpl"
    t.string   "lcncarvlfsf"
    t.string   "lcncarvlosi"
    t.string   "lcncarvlcopyfree"
    t.string   "lcncarvldebian"
    t.string   "lcncarvlfedora"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "phcscriptcdn_script_listings", force: :cascade do |t|
    t.string   "scripttitle"
    t.text     "scriptdescription"
    t.string   "scriptwebsite"
    t.string   "scripttwitter"
    t.string   "scriptgithub"
    t.date     "scriptinitialrelease"
    t.date     "scriptlastestrelease"
    t.date     "scriptbetarelease"
    t.date     "scriptlastestreleasecdn"
    t.string   "scriptstatus"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "phcscriptcdn_script_urls", force: :cascade do |t|
    t.string   "scripturl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_script_versions", force: :cascade do |t|
    t.string   "scriptversion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "phcscriptcdn_scriptcdn_authors", force: :cascade do |t|
    t.string   "authorfirstname"
    t.string   "authorlastname"
    t.string   "authorwebsite"
    t.string   "authorgithub"
    t.string   "authortwitter"
    t.integer  "main_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_authors_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_information", force: :cascade do |t|
    t.string   "scripttitle"
    t.text     "scriptdescription"
    t.string   "scriptcategory"
    t.string   "scriptwebsite"
    t.string   "scripttwitter"
    t.string   "scriptgithub"
    t.date     "scriptinitialrelease"
    t.string   "scriptlicence"
    t.string   "scriptplatform"
    t.string   "scriptstatus"
    t.integer  "main_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_information_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_mains", force: :cascade do |t|
    t.string   "scriptname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcscriptcdn_scriptcdn_urls", force: :cascade do |t|
    t.string   "scripturl"
    t.string   "scripturlext"
    t.integer  "main_id"
    t.string   "user_id"
    t.string   "membership_id"
    t.string   "oganization_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_urls_on_main_id"
  end

  create_table "phcscriptcdn_scriptcdn_versions", force: :cascade do |t|
    t.string   "versionnumber"
    t.integer  "main_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["main_id"], name: "index_phcscriptcdn_scriptcdn_versions_on_main_id"
  end

end
