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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130330051508) do

  create_table "askalot_answer_items", :force => true do |t|
    t.integer  "answer_id"
    t.integer  "option_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "askalot_answer_items", ["answer_id"], :name => "index_askalot_answer_items_on_answer_id"
  add_index "askalot_answer_items", ["option_id"], :name => "index_askalot_answer_items_on_option_id"

  create_table "askalot_answers", :force => true do |t|
    t.integer  "questionnaire_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "askalot_answers", ["questionnaire_id"], :name => "index_askalot_answers_on_questionnaire_id"

  create_table "askalot_options", :force => true do |t|
    t.string   "text"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "askalot_options", ["question_id"], :name => "index_askalot_options_on_question_id"

  create_table "askalot_questionnaires", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "askalot_questions", :force => true do |t|
    t.string   "text"
    t.integer  "questionnaire_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "askalot_questions", ["questionnaire_id"], :name => "index_askalot_questions_on_questionnaire_id"

end
