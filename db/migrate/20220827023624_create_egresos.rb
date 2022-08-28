class CreateEgresos < ActiveRecord::Migration[7.0]
  def change
    create_table :egresos do |t|
      t.string :documento
      t.integer :nro_doc
      t.date :fecha_emision
      t.date :fecha_pago
      t.string :rut_proveedor
      t.integer :monto_egreso
      t.string :tipo_egreso

      t.timestamps
    end
  end
end
