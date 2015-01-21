# encode: UTF-8
class ArticuloPeriodico < ActiveRecord::Base
  belongs_to :user
  attr_accessible :apellido, :fecha, :nombre, :pagina, :titulo_articulo, :titulo_periodico, :url
  
  validates :nombre, :presence => {:message => "Debe ingresar el nombre del autor o al menos la inicial de este"}
  validates :apellido, :presence => {:message => "Debe ingresar el apellido del autor"}
  validates :titulo_articulo, :presence => {:message => "Debe ingresar el titulo del articulo"}
  validates :titulo_periodico, :presence => {:message => "Debe ingresar el titulo del periodico"}
end
