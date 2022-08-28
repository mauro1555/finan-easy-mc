class CreateIngresos < ActiveRecord::Migration[7.0]
  def change
    create_table :ingresos do |t|
      t.string :documento
      t.integer :nro_doc
      t.date :fecha_emision
      t.date :fecha_pago
      t.string :rut_cliente
      t.integer :monto_ingreso
      t.string :tipo_ingreso

      t.timestamps
    end
  end
end
