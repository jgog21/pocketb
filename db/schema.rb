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

ActiveRecord::Schema.define(:version => 20121228174337) do

  create_table "assignments", :force => true do |t|
    t.text     "title"
    t.float    "grade"
    t.datetime "date"
    t.text     "assignment_pdf"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "assignments_courses", :id => false, :force => true do |t|
    t.integer "assignment_id"
    t.integer "course_id"
  end

  create_table "courses", :force => true do |t|
    t.text     "name"
    t.text     "version"
    t.text     "overview"
    t.text     "outline"
    t.text     "image_course"
    t.text     "teacher_name"
    t.text     "teacher_email"
    t.text     "teacher_image"
    t.text     "teacher_bio_summary"
    t.text     "teacher_bio_mime_type"
    t.text     "teacher_bio_link"
    t.text     "requirements"
    t.text     "outline_mime_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "courses_news", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "news_id"
  end

  create_table "courses_teacher_assistants", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "teacher_assistant_id"
  end

  create_table "forum_answers", :force => true do |t|
    t.text     "owner"
    t.text     "answer"
    t.integer  "votes"
    t.datetime "timestamp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forum_answers_forums", :id => false, :force => true do |t|
    t.integer "forum_answer_id"
    t.integer "forum_id"
  end

  create_table "forums", :force => true do |t|
    t.text     "title"
    t.text     "text"
    t.text     "owner"
    t.integer  "views"
    t.integer  "votes"
    t.integer  "answers"
    t.datetime "timestamp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "image_news"
    t.datetime "publish_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "resources", :force => true do |t|
    t.text     "title"
    t.text     "type"
    t.text     "resource_link"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "resources_topics", :id => false, :force => true do |t|
    t.integer "resource_id"
    t.integer "topic_id"
  end

  create_table "teacher_assistants", :force => true do |t|
    t.text     "email"
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.text     "title"
    t.text     "subtitle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
