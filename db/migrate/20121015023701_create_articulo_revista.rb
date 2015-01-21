class CreateArticuloRevista < ActiveRecord::Migration
  def change
    create_table :articulo_revista do |t|
      t.string :apellido
      t.string :nombre
      t.integer :anio
      t.string :titulo_articulo
      t.string :titulo_revista
      t.integer :volumen
      t.integer :numero
      t.integer :pagina
      t.references :user

      t.timestamps
    end
    add_index :articulo_revista, :user_id
  end
end
