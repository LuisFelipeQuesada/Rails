class AddTituloPeriodicoToArticuloPeriodico < ActiveRecord::Migration
  def change
  	change_table :articulo_periodicos do |t|
  		t.rename :titulo_perdico, :titulo_periodico
  	end
  end
end
