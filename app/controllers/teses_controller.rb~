class TesesController < ApplicationController
  
  # Con el before_authorization se invoca al método "authorization" el cual permite verificar si se ha iniciado sesión en el
  # sistema de esta manera, se puede dar permisos a los usuarios de acceder a los recursos de la aplicación
  before_filter :authorization
  
  # GET /teses
  # GET /teses.json
    #@teses = Tesis.all
  def index
	@teses = Tesis.where("user_id = ?",current_user.id)
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teses }
    end
  end

  # GET /teses/1
  # GET /teses/1.json
  def show
    @tese = Tesis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tese }
      format.pdf {
      	render :pdf => 'references', :template => 'teses/show_ind.pdf.erb'
      }
    end
  end

  # GET /teses/new
  # GET /teses/new.json
  def new
    @tese = Tesis.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tese }
    end
  end

  # GET /teses/1/edit
  def edit
    @tese = Tesis.find(params[:id])
  end

  # POST /teses
  # POST /teses.json
  def create
    @tese = Tesis.new(params[:tesis])
    @tese.user_id = current_user.id
	
    respond_to do |format|
      if @tese.save
        format.html { redirect_to @tese, notice: "Referencia creada"  }
        format.json { render json: @tese, status: :created, location: @tese }
      else
        format.html { render action: "new" }
        format.json { render json: @tese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teses/1
  # PUT /teses/1.json
  def update
    @tese = Tesis.find(params[:id])
    @tese.user_id = current_user.id

    respond_to do |format|
      if @tese.update_attributes(params[:tesis])
        format.html { redirect_to @tese, notice: 'La referencia se ha actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teses/1
  # DELETE /teses/1.json
  def destroy
    @tese = Tesis.find(params[:id])
    @tese.destroy

    respond_to do |format|
      format.html { redirect_to teses_url }
      format.json { head :no_content }
    end
  end
  
  def pdf
  	@tese = Tesis.where("user_id = ?",current_user.id)
    respond_to do |format|
      format.pdf {
      	render :pdf => 'Referencias Tesis', :template => 'teses/show.pdf.erb'
      }
    end
  end
end
