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

ActiveRecord::Schema.define(version: 20150608110705) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "form"
    t.string   "stream"
    t.string   "classteacher"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "incident"
    t.date     "incident_date"
    t.string   "student"
    t.string   "Adm_no"
    t.string   "form"
    t.text     "details"
    t.text     "action_taken"
    t.string   "email_subject"
    t.text     "email_message"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pay_fees", force: :cascade do |t|
    t.string   "student_name"
    t.string   "Adm_no"
    t.string   "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "pay_method"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pay_others", force: :cascade do |t|
    t.string   "student_name"
    t.string   "adm_no"
    t.string   "form"
    t.string   "stream"
    t.integer  "amount"
    t.string   "payment_for"
    t.string   "pay_method"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "full_name"
    t.string   "Adm_No"
    t.date     "birth_date"
    t.string   "gender"
    t.string   "nationality"
    t.string   "form"
    t.string   "stream"
    t.string   "class_teacher"
    t.string   "address"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.string   "email"
    t.string   "town"
    t.string   "county"
    t.date     "Adm_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "full_name"
    t.string   "employer"
    t.string   "employee_number"
    t.date     "employment_date"
    t.date     "birth_date"
    t.string   "marital_status"
    t.string   "nationality"
    t.string   "home_address"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.string   "email"
    t.string   "town"
    t.string   "county"
    t.text     "education"
    t.text     "certifications"
    t.text     "subjects"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
