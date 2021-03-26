# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_326_111_934) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'citext'
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'ideas', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'user_id', null: false
    t.string 'name'
    t.string 'ancestry'
    t.text 'description'
    t.boolean 'private', default: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['ancestry'], name: 'index_ideas_on_ancestry'
    t.index ['name'], name: 'index_ideas_on_name', unique: true
    t.index ['user_id'], name: 'index_ideas_on_user_id'
  end

  create_table 'models', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.uuid 'idea_id', null: false
    t.string 'name'
    t.string 'classified'
    t.string 'plural'
    t.string 'singular'
    t.string 'underscored'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['idea_id'], name: 'index_models_on_idea_id'
  end

  create_table 'users', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.citext 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.citext 'username'
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index ['username'], name: 'index_users_on_username', unique: true
  end

  add_foreign_key 'ideas', 'users'
  add_foreign_key 'models', 'ideas'
end
