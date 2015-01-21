class AddDoiToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :doi, :string
  end
end
