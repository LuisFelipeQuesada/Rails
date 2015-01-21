class RemoveTituloFromLibro < ActiveRecord::Migration
  def up
    remove_column :libros, :titulo
  end

  def down
    add_column :libros, :titulo, :string
  end
end
