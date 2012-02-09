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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111212001121) do

  create_table "consultation_motivations", :force => true do |t|
    t.integer  "consultation_id"
    t.integer  "ipcp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultation_problems", :force => true do |t|
    t.integer  "consultation_id"
    t.integer  "ipcp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultations", :force => true do |t|
    t.integer  "pacient_id"
    t.date     "consult_date"
    t.boolean  "is_consult"
    t.integer  "consultation_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diabetes_consultations", :force => true do |t|
    t.string   "diabete_type"
    t.integer  "hba_one_c"
    t.decimal  "imc"
    t.integer  "ta_up"
    t.integer  "ta_lower"
    t.string   "microalbuminuria"
    t.integer  "colesterol"
    t.string   "monitoring_dm"
    t.string   "antiagregante"
    t.integer  "pabd"
    t.integer  "hdl"
    t.integer  "tricliceridos"
    t.string   "ofl"
    t.string   "ecg"
    t.integer  "diagnose_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", :force => true do |t|
    t.integer  "process_number"
    t.string   "family_type"
    t.string   "graffar"
    t.string   "duval"
    t.integer  "total_elements"
    t.boolean  "is_total_el_diff"
    t.text     "comments"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maternity_consultations", :force => true do |t|
    t.integer  "age_weeks"
    t.integer  "age_days"
    t.string   "puerperio_revision"
    t.string   "companion"
    t.integer  "risk"
    t.boolean  "mental_risk"
    t.string   "citology"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacient_problems", :force => true do |t|
    t.integer  "pacient_id"
    t.integer  "ipcp_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacients", :force => true do |t|
    t.integer  "family_id"
    t.string   "name"
    t.date     "birth"
    t.string   "gender"
    t.boolean  "pnv"
    t.string   "occupation"
    t.string   "work_status"
    t.string   "scholar_status"
    t.string   "social_status"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pediatric_consultations", :force => true do |t|
    t.string   "companion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedriatric_consultations", :force => true do |t|
    t.string   "companion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pfs_consultations", :force => true do |t|
    t.string   "anticoncepcional"
    t.string   "citology"
    t.string   "ths"
    t.string   "monitoring_pf"
    t.string   "monitoring_vc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
