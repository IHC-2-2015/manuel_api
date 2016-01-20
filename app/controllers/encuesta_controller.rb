class EncuestaController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_encuestum, only: [:show, :edit, :update, :destroy]

  # GET /encuesta
  # GET /encuesta.json
  def index
    @encuesta = Encuestum.all
  end

  # GET /encuesta/1
  # GET /encuesta/1.json
  def show
  end

  # GET /encuesta/new
  def new
    @encuestum = Encuestum.new
  end

  # GET /encuesta/1/edit
  def edit
  end

  # POST /encuesta
  # POST /encuesta.json
  def create
    @encuestum = Encuestum.new(encuestum_params)

    respond_to do |format|
      if @encuestum.save
        format.html { render json: @encuestum}
        format.json { render json: @encuestum}
      else
        format.html { render :new }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta/1
  # PATCH/PUT /encuesta/1.json
  def update
    respond_to do |format|
      if @encuestum.update(encuestum_params)
        format.html { redirect_to @encuestum, notice: 'Encuestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuestum }
      else
        format.html { render :edit }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta/1
  # DELETE /encuesta/1.json
  def destroy
    @encuestum.destroy
    respond_to do |format|
      format.html { redirect_to encuesta_url, notice: 'Encuestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mostrar_encuestas

      @encuestum=Encuestum.all

      respond_to do |format|
        format.html { render json: @encuestum }
        format.json{ render json: @encuestum}
      end
  end

  def encuestas_por_tipo
    @encuestas = Encuestum.where(:tipo_encuesta_id => params[:tipo_id])

    respond_to do |format|
        format.html { render json: @encuestas }
        format.json{ render json: @encuestas } 
    end
  end

  # GET /encuestas_profesor?profesor_id=1
  def encuestas_profesor
    @encuestas = Encuestum.where(profesor_id: nil)
    @encuestas << Encuestum.where(profesor_id: params[:profesor_id])

    respond_to do |format|
      format.html { render json: @encuestas}
      format.json{ render json: @encuestas}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuestum
      @encuestum = Encuestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuestum_params
      params.require(:encuestum).permit(:estado, :nombre, :descripcion, :tipo_encuesta_id, :profesor_id)
    end
end
