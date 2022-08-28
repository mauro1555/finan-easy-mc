# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

array_dates = ('01-01-1990'.to_date..'14-07-2022'.to_date).to_a

#seed del modelo egresos:
20.times do |i|
    Egreso.create(documento: "Factura de compra NRO #{i + 1}", 
    nro_doc: "#{i + 1}", 
    fecha_emision: array_dates.sample, 
    fecha_pago: array_dates.sample, 
    rut_proveedor: "#{(i + 1).to_s}-k",
    monto_egreso: 10000 + i,
    tipo_egreso: ["compra", "otros egresos"].sample)
end

#seed del modelo ingresos:
20.times do |i|
    Ingreso.create(documento: "Factura de venta Nro #{i + 1}", 
    nro_doc: "#{i + 1}", 
    fecha_emision: array_dates.sample, 
    fecha_pago: array_dates.sample, 
    rut_cliente: "#{(i + 1).to_s}-k",
    monto_ingreso: 20000 + i,
    tipo_ingreso: ["Venta", "otros ingresos"].sample)
end

20.times do |i|
    Cliente.create(rut_cliente: "#{(i + 1).to_s}-k", nombre_cliente: Faker::Name.name)
end

20.times do |i|
    Proveedor.create(rut_proveedor: "#{(i + 1).to_s}-k", nombre_proveedor: Faker::Name.name)
end

20.times do |i|
    Empleado.create(rut_empleado: "#{(i + 1).to_s}-k", 
    nombre_empleado: Faker::Name.name,
    tipo_empleado: ["Fijo", "Honorarios"].sample)
end
