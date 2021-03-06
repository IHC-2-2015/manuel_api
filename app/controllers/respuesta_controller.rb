class RespuestaController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_respuestum, only: [:show, :edit, :update, :destroy]

  # GET /respuesta
  # GET /respuesta.json
  def index
    @respuesta = Respuestum.all
  end

  # GET /respuesta/1
  # GET /respuesta/1.json
  def show
  end

  # GET /respuesta/new
  def new
    @respuestum = Respuestum.new
  end

  # GET /respuesta/1/edit
  def edit
  end

  # POST /respuesta
  # POST /respuesta.json
  def create
    @respuestum = Respuestum.new(respuestum_params)

    respond_to do |format|
      if @respuestum.save
        format.html { redirect_to @respuestum, notice: 'Respuestum was successfully created.' }
        format.json { render :show, status: :created, location: @respuestum }
      else
        format.html { render :new }
        format.json { render json: @respuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  def buscar_pendientes_alumno
    @alumno = Alumno.where("correo = ?", params[:correo])
    @encuestas = []
    @alumno.each do |alumno|
      @encuesta_alumno = Respuestum.where(encuestador_id: alumno.id)
      @encuesta_alumno.each do |enc|
        @encuestas = (Evaluacione.where(id: enc.evaluacion_id, contestada: false))
        @encuestas.each do |en|
          @encuestas = @encuestas + (Encuestum.where(id: en.encuesta_id))
        end
      end
    end
    respond_to do |format|
      format.html { render json: @encuestas}
      format.json{ render json: @encuestas}
    end
  end

  def buscar_encuestas_alumno
    @alumno = Alumno.where("correo = ?", params[:correo])
    @encuestas = []
    @alumno.each do |alumno|
      @encuesta_alumno = Respuestum.where(encuestador_id: alumno.id)
      @encuesta_alumno.each do |enc|
        @encuestas = (Evaluacione.where(id: enc.evaluacion_id, contestada: true))
        @encuestas.each do |en|
          @encuestas = @encuestas + (Encuestum.where(id: en.encuesta_id))
        end
      end
    end
    respond_to do |format|
      format.html { render json: @encuestas}
      format.json{ render json: @encuestas}
    end
  end

  def guardar_respuesta
    @respuestum = Respuestum.new(respuestum_params)
    #@evaluacion = Evaluacione.where("id = ?", params[:evaluacion_id]).first
    # @evaluacion.each do |eva|
    #   @encuesta = EncuestaAlumno.where(encuesta_id: eva.encuesta_id, alumno_id: params[:encuestador_id]).first
    #   @encuesta.estado=true
    #   @encuesta.save
    # end
    respond_to do |format|
      if @respuestum.save          
        format.html { redirect_to @respuestum, notice: 'Respuestum was successfully created.' }
        format.json { render :show, status: :created, location: @respuestum }
      else
        format.html { render :new }
        format.json { render json: @respuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  def entregar_respuesta
    @respuesta = Respuestum.where(encuestador_id:params[:encuestador_id], encuestado_id:params[:encuestado_id], evaluacion_id:params[:evaluacion_id])

    respond_to do |format|
      format.html { render json: @respuesta }
      format.json { render json: @respuesta }
    end

  end


  # PATCH/PUT /respuesta/1
  # PATCH/PUT /respuesta/1.json
  def update
    respond_to do |format|
      if @respuestum.update(respuestum_params)
        format.html { redirect_to @respuestum, notice: 'Respuestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @respuestum }
      else
        format.html { render :edit }
        format.json { render json: @respuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuesta/1
  # DELETE /respuesta/1.json
  def destroy
    @respuestum.destroy
    respond_to do |format|
      format.html { redirect_to respuesta_url, notice: 'Respuestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuestum
      @respuestum = Respuestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respuestum_params
      params.require(:respuestum).permit( :encuestado_id, :encuestador_id, :evaluacion_id, :grupo_id, :respondida)
    end
end
 
