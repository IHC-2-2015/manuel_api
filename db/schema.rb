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

ActiveRecord::Schema.define(version: 20160115212546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "correo"
    t.integer  "usuario_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "curso_alumnos", force: :cascade do |t|
    t.integer  "curso_id"
    t.integer  "alumno_id"
    t.boolean  "ayudante"
    t.boolean  "estado"
    t.boolean  "jefe_proyecto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.integer  "profesor_id"
    t.string   "nombre"
    t.integer  "semestre"
    t.integer  "ano"
    t.text     "descripcion"
    t.string   "id_unico"
    t.boolean  "estado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "encuesta", force: :cascade do |t|
    t.boolean  "estado"
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "tipo_encuesta_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "profesor_id"
  end

  create_table "encuesta_alumnos", force: :cascade do |t|
    t.boolean  "estado"
    t.integer  "alumno_id"
    t.integer  "encuesta_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "encuesta_pregunta", force: :cascade do |t|
    t.integer  "encuesta_id"
    t.integer  "pregunta_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "evaluaciones", force: :cascade do |t|
    t.integer  "curso_id"
    t.integer  "encuesta_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "contestada"
  end

  create_table "funcionalidad_ayudante_cursos", force: :cascade do |t|
    t.integer  "curso_alumno_id"
    t.integer  "funcionalidad_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "permitido"
  end

  create_table "funcionalidads", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "grupo_alumnos", force: :cascade do |t|
    t.integer  "alumno_id"
    t.integer  "grupo_id"
    t.boolean  "jefe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "curso_id"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "opciones", force: :cascade do |t|
    t.integer  "valor"
    t.string   "opcion_text"
    t.integer  "pregunta_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pregunta", force: :cascade do |t|
    t.string   "enunciado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesores", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "correo"
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.boolean  "estado"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "respuesta", force: :cascade do |t|
    t.integer  "encuestado_id"
    t.integer  "encuestador_id"
    t.integer  "evaluacion_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "grupo_id"
  end

  create_table "respuestum_pregunta", force: :cascade do |t|
    t.integer  "respuesta_id"
    t.integer  "pregunta_id"
    t.integer  "valor_opcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tipos_encuesta", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "correo"
    t.integer  "rol"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
