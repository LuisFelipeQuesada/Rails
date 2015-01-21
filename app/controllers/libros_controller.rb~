class LibrosController < ApplicationController
  # GET /libros
  # GET /libros.json
  
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization
  
  def index
    #@libros = Libro.all
	@libros = Libro.where("user_id = ?",current_user.id)
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libros }
    end
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
    @libro = Libro.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @libro }
      format.pdf {
      	render :pdf => 'references', :template => 'libros/show_ind.pdf.erb'
      }
    end
  end

  # GET /libros/new
  # GET /libros/new.json
  def new
    @libro = Libro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @libro }
    end
  end

  # GET /libros/1/edit
  def edit
    @libro = Libro.find(params[:id])
  end

  # POST /libros
  # POST /libros.json
  def create
    @libro = Libro.new(params[:libro])
	@libro.user_id = current_user.id
	
    respond_to do |format|
      if @libro.save
        format.html { redirect_to @libro, notice: 'Referencia creada' }
        format.json { render json: @libro, status: :created, location: @libro }
      else
        format.html { render action: "new" }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /libros/1
  # PUT /libros/1.json
  def update
    @libro = Libro.find(params[:id])
	@libro.user_id = current_user.id
	
    respond_to do |format|
      if @libro.update_attributes(params[:libro])
        format.html { redirect_to @libro, notice: 'Referencia actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @libro = Libro.find(params[:id])
    @libro.destroy

    respond_to do |format|
      format.html { redirect_to libros_uw rl }
      format.json { head :no_content }
    end
  end
  
  def pdf
  	@libro = Libro.where("user_id = ?",current_user.id)
    respond_to do |format|
      format.pdf {
      	render :pdf => 'references', :template => 'libros/show.pdf.erb'
      }
    end
  end
end

