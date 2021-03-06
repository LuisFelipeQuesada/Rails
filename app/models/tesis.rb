# encode: UTF-8
class Tesis < ActiveRecord::Base
  belongs_to :user
  attr_accessible :anio, :apellido, :institucion, :localizacion, :nombre, :titulo, :user_id
    
  validates :nombre, :presence => {:message => "Debe ingresar el nombre del autor o al menos la inicial de este"}
  validates :apellido, :presence => {:message => "Debe ingresar el apellido del autor"}
  validates :titulo, :presence => {:message => "Debe ingresar el titulo de la Tesis"}
  validates :institucion, :presence => {:message => "Debe ingresar la institucion en la que se realizo la Tesis"}
  validates :anio, :numericality => {:only_integer => true, :message => "Ingrese solo numeros"}
end
