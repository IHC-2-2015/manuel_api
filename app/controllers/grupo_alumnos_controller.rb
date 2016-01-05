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

  def es_jefe
    @grupo_alumno = []
    @g =[]
    @alumno_grupo= GrupoAlumno.where("grupo_id = ?", params[:grupo_id])
    @alumno_grupo.each do |ga|
      @alumno = GrupoAlumno.where("alumno_id = ?", params[:alumno_id])
      @alumno.each do |a|
        @g = @g + (GrupoAlumno.where(alumno_id: a.alumno_id, grupo_id: ga.grupo_id))
        @g.each do |g|
          @grupo_alumno = GrupoAlumno.find(g.id)
        end
      end
    end
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
  
  def borrar_alumno
    @grupo_alumno = []
    @g =[]
    @alumno_grupo= GrupoAlumno.where("grupo_id = ?", params[:grupo_id])
    @alumno_grupo.each do |ga|
      @alumno = GrupoAlumno.where("alumno_id = ?", params[:alumno_id])
      @alumno.each do |a|
        @g = @g + (GrupoAlumno.where(alumno_id: a.alumno_id, grupo_id: ga.grupo_id))
        @g.each do |g|
          @grupo_alumno = GrupoAlumno.find(g.id)
        end
      end
    end
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

  # def buscar_no_evaluados
  #     @alumnos_no_evaluados_por_grupo = []
  #     @evaluacion = Evaluacione.where("encuesta_id = ?", params[:encuesta_id])
  #     @evaluacion.each do |eva|
  #       @respuestas = Respuestum.where("encuestador_id = ?", params[:encuestador_id])
  #       @respuestas.each do |res|
  #         @encuestador = Respuestum.where(evaluacion_id: eva.id, encuestador_id: res.encuestador_id)
  #         @encuestador.each do |encu|
  #           @grupo= GrupoAlumno.where("grupo_id = ?", params[:grupo_id])
  #           @grupo.each do |gr|
  #             @alumnos_no_evaluados = Alumno.where("alumno_id != ?", encu.encuestado_id)
  #             @alumnos_no_evaluados.each do |alumnos|
  #               @alumnos_no_evaluados_por_grupo = @alumnos_no_evaluados_por_grupo +(GrupoAlumno.where("id != ?" alumnos.alumno_id))
  #             end
  #         end
  #       end
  #     end
  #     respond_to do |format|
  #       format.html { render json: @alumnos_no_evaluados_por_grupo}
  #       format.json{ render json: @alumnos_no_evaluados_por_grupo}
  #     end
  # end

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
