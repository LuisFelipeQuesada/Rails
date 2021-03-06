# encode: UTF-8
class ArticuloRevistum < ActiveRecord::Base
  belongs_to :user
  attr_accessible :anio, :apellido, :nombre, :numero, :pagina, :titulo_articulo, :titulo_revista, :volumen, :url
  
  validates :nombre, :presence => {:message => "Debe ingresar el nombre del autor o al menos la inicial de este"}
  validates :apellido, :presence => {:message => "Debe ingresar el apellido del autor"}
  validates :titulo_articulo, :presence => {:message => "Debe ingresar el titulo del articulo"}
  validates :titulo_revista, :presence => {:message => "Debe ingresar el titulo de la revista"}
end
