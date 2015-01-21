class ArticuloPeriodicosController < ApplicationController
  
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization
  
  # GET /articulo_periodicos
  # GET /articulo_periodicos.json
  def index
    #@articulo_periodicos = ArticuloPeriodico.all
	@articulo_periodicos = ArticuloPeriodico.where("user_id = ?",current_user.id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articulo_periodicos }
    end
  end

  # GET /articulo_periodicos/1
  # GET /articulo_periodicos/1.json
  def show
    @articulo_periodico = ArticuloPeriodico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articulo_periodico }
      format.pdf {
      	render :pdf => 'references', :template => 'articulo_periodicos/show_ind.pdf.erb'
      }
    end
  end

  # GET /articulo_periodicos/new
  # GET /articulo_periodicos/new.json
  def new
    @articulo_periodico = ArticuloPeriodico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articulo_periodico }
    end
  end

  # GET /articulo_periodicos/1/edit
  def edit
    @articulo_periodico = ArticuloPeriodico.find(params[:id])
  end

  # POST /articulo_periodicos
  # POST /articulo_periodicos.json
  def create
    @articulo_periodico = ArticuloPeriodico.new(params[:articulo_periodico])
    @articulo_periodico.user_id = current_user.id

    respond_to do |format|
      if @articulo_periodico.save
        format.html { redirect_to @articulo_periodico, notice: 'La referencia ha sido creada' }
        format.json { render json: @articulo_periodico, status: :created, location: @articulo_periodico }
      else
        format.html { render action: "new" }
        format.json { render json: @articulo_periodico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articulo_periodicos/1
  # PUT /articulo_periodicos/1.json
  def update
    @articulo_periodico = ArticuloPeriodico.find(params[:id])
    @articulo_periodico.user_id = current_user.id

    respond_to do |format|
      if @articulo_periodico.update_attributes(params[:articulo_periodico])
        format.html { redirect_to @articulo_periodico, notice: 'La referencia ha sido actualizada' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @articulo_periodico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulo_periodicos/1
  # DELETE /articulo_periodicos/1.json
  def destroy
    @articulo_periodico = ArticuloPeriodico.find(params[:id])
    @articulo_periodico.destroy

    respond_to do |format|
      format.html { redirect_to articulo_periodicos_url }
      format.json { head :no_content }
    end
  end
  
  def pdf
  	@periodico = ArticuloPeriodico.where("user_id = ?",current_user.id)
    respond_to do |format|
      format.pdf {
      	render :pdf => 'Referencias Periodicos', :template => 'articulo_periodicos/show.pdf.erb'
      }
    end
  end
end
