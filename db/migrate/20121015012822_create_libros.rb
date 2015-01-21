class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :apellido
      t.string :nombre
      t.integer :anio
      t.string :lugar_publicacion
      t.string :casa_publicacion
      t.references :user

      t.timestamps
    end
    add_index :libros, :user_id
  end
end
