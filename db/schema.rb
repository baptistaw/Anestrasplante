# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161222015526) do

  create_table "actual_diseases", force: :cascade do |t|
    t.string   "clase_funcional"
    t.string   "enf_coronaria"
    t.integer  "hta"
    t.string   "valvulopatia"
    t.string   "arritmias_marcapaso"
    t.string   "fumador"
    t.string   "epoc"
    t.string   "asma"
    t.string   "nefropatia_uropatia"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "patient_id"
    t.integer  "user_id"
  end

  create_table "actual_hepatics", force: :cascade do |t|
    t.string   "s_hepatorrenal"
    t.string   "s_hepatopulmonar"
    t.string   "ht_pulmonar"
    t.string   "ht_portal"
    t.string   "ascitis"
    t.string   "esplenomeg"
    t.string   "varices_esof"
    t.string   "encefalopatia"
    t.string   "hiponatremia"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "discrasia"
  end

  create_table "antecedent_hepatics", force: :cascade do |t|
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "s_hepatorrenal"
    t.string   "s_hepatopulmonar"
    t.string   "ht_pulmonar"
    t.string   "ht_portal"
    t.string   "ascitis"
    t.string   "esplenomeg"
    t.string   "varices_esof"
    t.string   "encefalopatia"
    t.string   "discrasia"
    t.string   "hiponatremia"
  end

  create_table "antecedents", force: :cascade do |t|
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "enf_coronaria"
    t.string   "hta"
    t.string   "valvulopatia"
    t.string   "arritmias_marcapaso"
    t.string   "fumador"
    t.string   "epoc"
    t.string   "asma"
    t.string   "nefropatia_uropatia"
    t.string   "diabetes"
    t.string   "hipotiroidismo"
    t.string   "hipertiroidismo"
    t.string   "rge_gastritis_ulcus"
    t.string   "alergias"
    t.string   "cirugia_abdominal"
  end

  create_table "complementarios_exams", force: :cascade do |t|
    t.string   "ecg"
    t.string   "ecocardiograma"
    t.string   "ecodobutamina"
    t.string   "ergometria"
    t.string   "holter"
    t.string   "rxtx"
    t.string   "funcional_respiratorio"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "corevaluations", force: :cascade do |t|
    t.string   "causa_hepatopatia"
    t.integer  "peso"
    t.integer  "talla"
    t.integer  "pxif"
    t.integer  "meld"
    t.integer  "melde"
    t.string   "child"
    t.string   "asa"
    t.text     "maximos_riesgos"
    t.text     "causa_no_ingreso"
    t.text     "estudios_pendientes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "patient_id"
    t.string   "ingresa_lista"
    t.string   "candidato_fastrack"
    t.string   "candidato_tranexamico"
  end

  create_table "examen_fisicos", force: :cascade do |t|
    t.string   "apertura_bucal"
    t.string   "mpt"
    t.string   "protesis"
    t.string   "cuello"
    t.integer  "pa_sistolica"
    t.integer  "pa_diastolica"
    t.integer  "fc"
    t.string   "pp"
    t.string   "tiroides"
    t.string   "reperes_vvc"
    t.string   "red_venosa"
    t.string   "test_allen"
    t.string   "siquismo"
    t.string   "estado_nutricional"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "soplos"
    t.string   "flapping"
  end

  create_table "farmacologico_treatments", force: :cascade do |t|
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "betabloqueantes"
    t.string   "bloqueantes_calcio"
    t.string   "stringieca"
    t.string   "diureticos"
    t.string   "colesteramina"
    t.string   "omeprazol"
    t.string   "antibioticos"
  end

  create_table "laboratory_exams", force: :cascade do |t|
    t.integer  "hb"
    t.integer  "hto"
    t.integer  "plaquetas"
    t.integer  "gb"
    t.integer  "tp"
    t.decimal  "inr"
    t.integer  "fibrinogeno"
    t.integer  "aPTT"
    t.decimal  "glicemia"
    t.decimal  "azoemia"
    t.decimal  "creatininemia"
    t.integer  "na"
    t.decimal  "k"
    t.decimal  "albumina"
    t.decimal  "proteinas_totales"
    t.integer  "fa"
    t.integer  "tgo"
    t.integer  "tgp"
    t.integer  "bt"
    t.integer  "bd"
    t.integer  "bi"
    t.integer  "amilasemia"
    t.string   "hiv"
    t.string   "cmv"
    t.string   "vdrl"
    t.decimal  "tsh"
    t.date     "fecha_ultima_parac"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "ci"
    t.date     "f_ingreso"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "fnr"
    t.string   "sexo"
    t.string   "prestador"
    t.string   "procedencia"
    t.string   "comentarios"
    t.date     "f_nacimiento"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
