class AddUrlToLibro < ActiveRecord::Migration
  def change
    add_column :libros, :url, :string
  end
end
