class AddUrlToArticuloRevista < ActiveRecord::Migration
  def change
    add_column :articulo_revista, :url, :string
  end
end
