class GrupoAlumnosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_grupo_alumno, only: [:show, :edit, :update, :destroy]

  # GET /grupo_alumnos
  # GET /grupo_alumnos.json
  def index
    @grupo_alumnos = GrupoAlumno.all
  end

  # GET /grupo_alumnos/1
  # GET /grupo_alumnos/1.json
  def show
  end

  # GET /grupo_alumnos/new
  def new
    @grupo_alumno = GrupoAlumno.new
  end

  # GET /grupo_alumnos/1/edit
  def edit
  end

  # POST /grupo_alumnos
  # POST /grupo_alumnos.json
  def create
    @grupo_alumno = GrupoAlumno.new(grupo_alumno_params)

    respond_to do |format|
      if @grupo_alumno.save
        format.html { redirect_to @grupo_alumno, notice: 'Grupo alumno was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_alumno }
      else
        format.html { render :new }
        format.json { render json: @grupo_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_alumnos/1
  # PATCH/PUT /grupo_alumnos/1.json
  def update
    respond_to do |format|
      if @grupo_alumno.update(grupo_alumno_params)
        format.html { redirect_to @grupo_alumno, notice: 'Grupo alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_alumno }
      else
        format.html { render :edit }
        format.json { render json: @grupo_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_alumnos/1
  # DELETE /grupo_alumnos/1.json
  def destroy
    @grupo_alumno.destroy
    respond_to do |format|
      format.html { redirect_to grupo_alumnos_url, notice: 'Grupo alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def buscar_por_grupo
      @alumnos_por_grupo = []
      @grupo_alumno= GrupoAlumno.where("grupo_id = ?", params[:grupo_id])
      @grupo_alumno.each do |alumnos|
        @alumnos_por_grupo = @alumnos_por_grupo +(Alumno.where(id: alumnos.alumno_id))
      end
      respond_to do |format|
        format.html { render json: @alumnos_por_grupo}
        format.json{ render json: @alumnos_por_grupo}
      end
  end

  def grupos_jefe
    @grupo_alumno = []
    @alumno = Alumno.where("correo = ?", params[:correo])
    @alumno.each do |alumnos|
      @grupo_alumno = @grupo_alumno + (GrupoAlumno.where(alumno_id: alumnos.id, jefe: true))
    end
    @grupo = []
    @grupo_alumno.each do |grupos|
      @grupo = @grupo + (Grupo.where(id: grupos.grupo_id))
    end
    respond_to do |format|
      format.html { render json: @grupo}
      format.json{ render json: @grupo}
    end
  end

  def encuestas_jefe
    @grupo_alumno = []
    @alumno = Alumno.where("correo = ?", params[:correo])
    @alumno.each do |alumnos|
      @grupo_alumno = @grupo_alumno + (GrupoAlumno.where(alumno_id: alumnos.id, jefe: true))
    end
    @encuestas = []
    @grupo_alumno.each do |grupos|
      @encuestas = @encuestas + (EncuestaAlumno.where(alumno_id: grupos.alumno_id))
    end
    @encuestas_al =[]
    @encuestas.each do |en|
      @encuestas_al= @encuestas_al + (Encuestum.where(id: en.encuesta_id))
    end
    respond_to do |format|
      format.html { render json: @encuestas_al}
      format.json{ render json: @encuestas_al}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_alumno
      @grupo_alumno = GrupoAlumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_alumno_params
      params.require(:grupo_alumno).permit(:alumno_id, :grupo_id, :jefe)
    end
end
