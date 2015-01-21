class CreateArticuloPeriodicos < ActiveRecord::Migration
  def change
    create_table :articulo_periodicos do |t|
      t.string :apellido
      t.string :nombre
      t.date :fecha
      t.string :titulo_articulo
      t.string :titulo_perdico
      t.integer :pagina
      t.references :user

      t.timestamps
    end
    add_index :articulo_periodicos, :user_id
  end
end
