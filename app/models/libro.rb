# encode: UTF-8
class Libro < ActiveRecord::Base
  
  
  belongs_to :user
  attr_accessible :anio, :apellido, :casa_publicacion, :lugar_publicacion, :nombre, :titulo_capitulo, :url, :user_id, :titulo_libro, :doi
  
  validates :nombre, :presence => {:message => "Debe ingresar el nombre del autor o al menos la inicial de este"}
  validates :apellido, :presence => {:message => "Debe ingresar el apellido del autor"}
  validates :titulo_libro, :presence => {:message => "Debe ingresar el titulo del libro"}
  validates :anio, :numericality => {:only_integer => true, :message => "Ingrese solo numeros"}
end
