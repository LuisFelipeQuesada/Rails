class AddTituloCapituloToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :titulo_capitulo, :string
  end
end
