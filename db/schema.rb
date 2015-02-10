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

ActiveRecord::Schema.define(version: 20150209042619) do

  create_table "admins", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "gender",                 limit: 255
    t.boolean  "admin_authority",        limit: 1
    t.boolean  "reply_msg_authority",    limit: 1
    t.boolean  "add_authority",          limit: 1
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "authentication_token",   limit: 255
  end

  add_index "admins", ["authentication_token"], name: "index_admins_on_authentication_token", unique: true, using: :btree
  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "department_name", limit: 255
    t.integer  "begin_year",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "gender",                 limit: 255
    t.string   "role",                   limit: 255, default: "instructor"
    t.string   "personal_image",         limit: 255
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.string   "email",                  limit: 255, default: "",           null: false
    t.string   "encrypted_password",     limit: 255, default: "",           null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "authentication_token",   limit: 255
  end

  add_index "instructors", ["authentication_token"], name: "index_instructors_on_authentication_token", unique: true, using: :btree
  add_index "instructors", ["email"], name: "index_instructors_on_email", unique: true, using: :btree
  add_index "instructors", ["reset_password_token"], name: "index_instructors_on_reset_password_token", unique: true, using: :btree

  create_table "instructors_students", id: false, force: :cascade do |t|
    t.integer "instructor_id", limit: 4
    t.integer "student_id",    limit: 4
  end

  create_table "mcq_answers", force: :cascade do |t|
    t.integer  "student_answer", limit: 4
    t.integer  "student_id",     limit: 4
    t.integer  "mcq_id",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "mcqs", force: :cascade do |t|
    t.string   "question",             limit: 255
    t.string   "choice1",              limit: 255
    t.string   "choice2",              limit: 255
    t.string   "choice3",              limit: 255
    t.string   "choice4",              limit: 255
    t.integer  "question_mark",        limit: 4
    t.boolean  "bonus",                limit: 1,     default: false
    t.text     "explanation",          limit: 65535
    t.boolean  "hint",                 limit: 1,     default: false
    t.text     "hint_sentence",        limit: 65535
    t.integer  "hint_discounted_mark", limit: 4,     default: 0
    t.string   "answer",               limit: 255
    t.integer  "quiz_id",              limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "numerical_answers", force: :cascade do |t|
    t.integer  "student_answer",        limit: 4
    t.integer  "student_id",            limit: 4
    t.integer  "numerical_question_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "numerical_questions", force: :cascade do |t|
    t.string   "question",             limit: 255
    t.integer  "question_mark",        limit: 4
    t.boolean  "bonus",                limit: 1,     default: false
    t.text     "explanation",          limit: 65535
    t.boolean  "hint",                 limit: 1,     default: false
    t.text     "hint_sentence",        limit: 65535
    t.integer  "hint_discounted_mark", limit: 4
    t.integer  "answer",               limit: 4
    t.integer  "quiz_id",              limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "quiz_marks", force: :cascade do |t|
    t.integer  "student_quiz_mark", limit: 4
    t.integer  "student_id",        limit: 4
    t.integer  "quiz_id",           limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.time     "duration"
    t.string   "quiz_title",           limit: 255
    t.datetime "time_to_be_published"
    t.integer  "average_degree",       limit: 4
    t.integer  "quiz_mark",            limit: 4
    t.integer  "instructor_id",        limit: 4
    t.integer  "subject_id",           limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",                        limit: 255
    t.date     "date_of_birth"
    t.integer  "expected_year_of_graduation", limit: 4
    t.string   "personal_image",              limit: 255
    t.string   "gender",                      limit: 255
    t.string   "studying_year",               limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "email",                       limit: 255, default: "", null: false
    t.string   "encrypted_password",          limit: 255, default: "", null: false
    t.string   "reset_password_token",        limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",          limit: 255
    t.string   "last_sign_in_ip",             limit: 255
    t.string   "authentication_token",        limit: 255
  end

  add_index "students", ["authentication_token"], name: "index_students_on_authentication_token", unique: true, using: :btree
  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.integer "student_id", limit: 4
    t.integer "subject_id", limit: 4
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject",       limit: 255
    t.string   "course_code",   limit: 255
    t.string   "studying_year", limit: 255
    t.integer  "instructor_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "text_sentences", force: :cascade do |t|
    t.text     "text_sentence", limit: 65535
    t.integer  "quiz_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "true_or_false_answers", force: :cascade do |t|
    t.boolean  "student_answer",            limit: 1
    t.integer  "true_or_false_question_id", limit: 4
    t.integer  "student_id",                limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "true_or_false_questions", force: :cascade do |t|
    t.integer  "question_mark",        limit: 4
    t.boolean  "bonus",                limit: 1
    t.text     "explanation",          limit: 65535
    t.boolean  "hint",                 limit: 1
    t.text     "hint_sentence",        limit: 65535
    t.integer  "hint_discounted_mark", limit: 4
    t.boolean  "answer",               limit: 1
    t.integer  "quiz_id",              limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
