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

ActiveRecord::Schema[7.0].define(version: 2022_08_27_034433) do
  create_table "clientes", force: :cascade do |t|
    t.string "rut_cliente"
    t.string "nombre_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresos", force: :cascade do |t|
    t.string "documento"
    t.integer "nro_doc"
    t.date "fecha_emision"
    t.date "fecha_pago"
    t.string "rut_proveedor"
    t.integer "monto_egreso"
    t.string "tipo_egreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "rut_empleado"
    t.string "nombre_empleado"
    t.string "apellido_empleado"
    t.string "tipo_empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingresos", force: :cascade do |t|
    t.string "documento"
    t.integer "nro_doc"
    t.date "fecha_emision"
    t.date "fecha_pago"
    t.string "rut_cliente"
    t.integer "monto_ingreso"
    t.string "tipo_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "rut_proveedor"
    t.string "nombre_proveedor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
