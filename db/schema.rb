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

ActiveRecord::Schema.define(version: 20170729072251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"
  enable_extension "fuzzystrmatch"
  enable_extension "postgis_tiger_geocoder"
  enable_extension "postgis_topology"

  create_table "ip_change_notification_requests", id: :bigint, default: -> { "nextval('ip_change_notifcation_requests_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "trade_mark_number", limit: 50
    t.string "australian_application_number", limit: 50
    t.string "email_address", limit: 300
    t.string "device_uuid", limit: 5000
    t.json "last_notified_state"
  end

  create_table "layer", primary_key: ["topology_id", "layer_id"], force: :cascade do |t|
    t.integer "topology_id", null: false
    t.integer "layer_id", null: false
    t.string "schema_name", null: false
    t.string "table_name", null: false
    t.string "feature_column", null: false
    t.integer "feature_type", null: false
    t.integer "level", default: 0, null: false
    t.integer "child_id"
    t.index ["schema_name", "table_name", "feature_column"], name: "layer_schema_name_table_name_feature_column_key", unique: true
  end

  create_table "patents_applicant_informations", force: :cascade do |t|
    t.bigint "ipa_applt_id"
    t.string "australian_appl_no"
    t.string "appln_type"
    t.string "name"
    t.string "cleanname"
    t.string "country"
    t.bigint "australian"
    t.bigint "entity"
    t.bigint "ipa_id"
    t.bigint "abn"
    t.bigint "acn"
    t.string "source"
    t.bigint "big"
    t.bigint "ultimate"
    t.bigint "lat"
    t.bigint "lon"
    t.bigint "qg"
    t.string "state"
    t.bigint "postcode"
    t.bigint "patstat_appln_id"
    t.string "applicant_type"
    t.bigint "sa2_main11"
    t.string "sa2_name11"
    t.string "gcc_code11"
    t.string "gcc_name11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patents_ip_australia_process_informations", force: :cascade do |t|
    t.string "australian_appl_no"
    t.string "source_data_key_code"
    t.string "patent_type"
    t.string "pct_application_ind"
    t.string "requested_exam_type"
    t.string "exam_status_type"
    t.string "examination_section_name"
    t.string "acceptance_postponed_ind"
    t.integer "accepted_claims_count"
    t.string "patent_status_type"
    t.date "application_date"
    t.date "npe_date"
    t.date "filing_date"
    t.date "opi_date"
    t.date "expiry_date"
    t.date "search_completed_date"
    t.date "exam_request_date"
    t.date "exam_request_filing_date"
    t.date "deferement_request_date"
    t.date "first_report_issue_date"
    t.date "further_report_issue_date"
    t.date "search_results_received_date"
    t.date "thrd_prty_exam_request_date"
    t.date "earliest_priority_date"
    t.date "acceptance_published_date"
    t.date "sealing_date"
    t.date "wipo_publication_date"
    t.date "effective_patent_date"
    t.date "opi_published_in_journal_date"
    t.date "continue_renew_fee_paid_date"
    t.date "in_force_to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patents_metadata", primary_key: "australian_appl_no", id: :bigint, default: nil, force: :cascade do |t|
    t.json "metadata"
  end

  create_table "spatial_ref_sys", primary_key: "srid", id: :integer, default: nil, force: :cascade do |t|
    t.string "auth_name", limit: 256
    t.integer "auth_srid"
    t.string "srtext", limit: 2048
    t.string "proj4text", limit: 2048
  end

  create_table "topology", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.integer "srid", null: false
    t.float "precision", null: false
    t.boolean "hasz", default: false, null: false
    t.index ["name"], name: "topology_name_key", unique: true
  end

  create_table "trade_marks_applicant_informations", force: :cascade do |t|
    t.bigint "ipa_applt_id"
    t.string "tm_number"
    t.string "appln_type"
    t.string "name"
    t.string "cleanname"
    t.string "country"
    t.bigint "australian"
    t.bigint "entity"
    t.bigint "ipa_id"
    t.bigint "abn"
    t.bigint "acn"
    t.string "source"
    t.bigint "big"
    t.bigint "ultimate"
    t.bigint "lat"
    t.bigint "lon"
    t.bigint "qg"
    t.string "state"
    t.bigint "postcode"
    t.string "applicant_type"
    t.bigint "sa2_main11"
    t.string "sa2_name11"
    t.string "gcc_code11"
    t.string "gcc_name11"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "layer", "topology", name: "layer_topology_id_fkey"
end
