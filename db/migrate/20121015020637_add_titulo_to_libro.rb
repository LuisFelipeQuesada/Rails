class AddTituloToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :titulo, :string
  end
end
