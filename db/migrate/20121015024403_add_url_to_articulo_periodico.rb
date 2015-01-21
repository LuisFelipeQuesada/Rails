class AddUrlToArticuloPeriodico < ActiveRecord::Migration
  def change
    add_column :articulo_periodicos, :url, :string
  end
end
