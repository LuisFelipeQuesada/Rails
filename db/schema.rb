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

ActiveRecord::Schema.define(:version => 20121020193835) do

  create_table "articulo_periodicos", :force => true do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.date     "fecha"
    t.string   "titulo_articulo"
    t.string   "titulo_periodico"
    t.integer  "pagina"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "url"
  end

  add_index "articulo_periodicos", ["user_id"], :name => "index_articulo_periodicos_on_user_id"

  create_table "articulo_revista", :force => true do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.integer  "anio"
    t.string   "titulo_articulo"
    t.string   "titulo_revista"
    t.integer  "volumen"
    t.integer  "numero"
    t.integer  "pagina"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "url"
  end

  add_index "articulo_revista", ["user_id"], :name => "index_articulo_revista_on_user_id"

  create_table "libros", :force => true do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.integer  "anio"
    t.string   "lugar_publicacion"
    t.string   "casa_publicacion"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "url"
    t.string   "titulo_libro"
    t.string   "doi"
    t.string   "titulo_capitulo"
  end

  add_index "libros", ["user_id"], :name => "index_libros_on_user_id"

  create_table "teses", :force => true do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.integer  "anio"
    t.string   "titulo"
    t.string   "institucion"
    t.string   "localizacion"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "teses", ["user_id"], :name => "index_teses_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "pass_hash"
    t.string   "pass_salt"
    t.integer  "activated"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
