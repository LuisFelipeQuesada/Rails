# encode: UTF-8
class User < ActiveRecord::Base
  # Relaciones que tiene este modelo con otros
  has_many :tesis
  has_many :libro
  has_many :articulo_revistum
  has_many :articulo_periodico
  
  attr_accessible :email, :name, :pass_hash, :pass_salt
  
  #Se validan cada uno de los atributos del modelo
  validates :name, :presence => {:message=>"Debe ingresar su nombre"}
  validates :email, :presence => {:message=>"Debe ingresar su correo"}, :uniqueness => {:message => "Ya existe un usuario con ese correo"}, :format=>{:with=>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message=>"Ingrese un correo valido"}
  validates :pass_hash, :presence => true, :length =>  {:in => 6..12, :message => "Debe ingresar una contrasena de 6 a 12 carateres"}
  
  # Callback que se realiza para encriptar el password
  before_save :encrypt_password
  
  # Autenticar usuario
  # Entradas: Recibe el correo y el password
  # Proceso: El método busca el usurio con el correo dado en el sistema y obtiene su salt, al password ingresado por
  # 		 el usuario se le aplica el salt y se valida su igualdad
  # Salidas: El usuario puede ingresar al sistema
  def self.authenticate(email, pass_hash)
  	user = find_by_email(email)
  	if user && user.pass_hash == BCrypt::Engine.hash_secret(pass_hash, user.pass_salt)
  		user
  	else
  		nil
  	end
  end
  
  # Encriptar password
  # Entradas: No recibe ninguna
  # Proceso: El método genera un salt y con este encripta el password
  # Salidas: No retorna el ninguna salida
  def encrypt_password
  	if pass_hash.present?
  		self.pass_salt = BCrypt::Engine.generate_salt
  		self.pass_hash = BCrypt::Engine.hash_secret(pass_hash, pass_salt)
  	end
  end 
end

