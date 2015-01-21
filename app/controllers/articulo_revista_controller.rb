class ArticuloRevistaController < ApplicationController
  
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization
  
  # GET /articulo_revista
  # GET /articulo_revista.json
  def index
    #@articulo_revista = ArticuloRevistum.all
    @articulo_revista = ArticuloRevistum.where("user_id = ?",current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articulo_revista }
    end
  end

  # GET /articulo_revista/1
  # GET /articulo_revista/1.json
  def show
    @articulo_revistum = ArticuloRevistum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articulo_revistum }
      format.pdf {
      	render :pdf => 'references', :template => 'articulo_revista/show_ind.pdf.erb'
      }
    end
  end

  # GET /articulo_revista/new
  # GET /articulo_revista/new.json
  def new
    @articulo_revistum = ArticuloRevistum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articulo_revistum }
    end
  end

  # GET /articulo_revista/1/edit
  def edit
    @articulo_revistum = ArticuloRevistum.find(params[:id])
  end

  # POST /articulo_revista
  # POST /articulo_revista.json
  def create
    @articulo_revistum = ArticuloRevistum.new(params[:articulo_revistum])
	@articulo_revistum.user_id = current_user.id
	
    respond_to do |format|
      if @articulo_revistum.save
        format.html { redirect_to @articulo_revistum, notice: 'La referencia ha sido creada' }
        format.json { render json: @articulo_revistum, status: :created, location: @articulo_revistum }
      else
        format.html { render action: "new" }
        format.json { render json: @articulo_revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articulo_revista/1
  # PUT /articulo_revista/1.json
  def update
    @articulo_revistum = ArticuloRevistum.find(params[:id])
    @articulo_revistum.user_id = current_user.id

    respond_to do |format|
      if @articulo_revistum.update_attributes(params[:articulo_revistum])
        format.html { redirect_to @articulo_revistum, notice: 'La referencia ha sido actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @articulo_revistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulo_revista/1
  # DELETE /articulo_revista/1.json
  def destroy
    @articulo_revistum = ArticuloRevistum.find(params[:id])
    @articulo_revistum.destroy

    respond_to do |format|
      format.html { redirect_to articulo_revista_url }
      format.json { head :no_content }
    end
  end
  
  def pdf
  	@revista = ArticuloRevistum.where("user_id = ?",current_user.id)
    respond_to do |format|
      format.pdf {
      	render :pdf => 'Referencias Revistas', :template => 'articulo_revista/show.pdf.erb'
      }
    end
  end
end
