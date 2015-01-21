class AddTituloLibroToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :titulo_libro, :string
  end
end
