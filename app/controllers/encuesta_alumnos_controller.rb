class EncuestaAlumnosController < ApplicationController
  before_action :set_encuesta_alumno, only: [:show, :edit, :update, :destroy]

  # GET /encuesta_alumnos
  # GET /encuesta_alumnos.json
  def index
    @encuesta_alumnos = EncuestaAlumno.all
  end

  # GET /encuesta_alumnos/1
  # GET /encuesta_alumnos/1.json
  def show
  end

  # GET /encuesta_alumnos/new
  def new
    @encuesta_alumno = EncuestaAlumno.new
  end

  # GET /encuesta_alumnos/1/edit
  def edit
  end

  # POST /encuesta_alumnos
  # POST /encuesta_alumnos.json
  def create
    @encuesta_alumno = EncuestaAlumno.new(encuesta_alumno_params)

    respond_to do |format|
      if @encuesta_alumno.save
        format.html { redirect_to @encuesta_alumno, notice: 'Encuesta alumno was successfully created.' }
        format.json { render :show, status: :created, location: @encuesta_alumno }
      else
        format.html { render :new }
        format.json { render json: @encuesta_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta_alumnos/1
  # PATCH/PUT /encuesta_alumnos/1.json
  def update
    respond_to do |format|
      if @encuesta_alumno.update(encuesta_alumno_params)
        format.html { redirect_to @encuesta_alumno, notice: 'Encuesta alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuesta_alumno }
      else
        format.html { render :edit }
        format.json { render json: @encuesta_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta_alumnos/1
  # DELETE /encuesta_alumnos/1.json
  def destroy
    @encuesta_alumno.destroy
    respond_to do |format|
      format.html { redirect_to encuesta_alumnos_url, notice: 'Encuesta alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def buscar_pendientes_alumno
    @alumno = Alumno.where("correo = ?", params[:correo])
    @encuestas = []
    @alumno.each do |alumno|
      @curso = CursoAlumno.joins(:evaluaciones)

     # @encuesta_alumno = EncuestaAlumno.where(alumno_id: alumno.id, estado: false)
      #@encuesta_alumno.each do |enc|
       # @encuestas = @encuestas + (Encuestum.where(id: enc.encuesta_id))
       #  @curso = CursoAlumno.where(alumno_id: enc.alumno_id)
        #@curso.each do |c|
        #  @encuestas = @encuestas + (Curso.where(id: c.curso_id))
        #end
#      end
    end
    respond_to do |format|
      format.html { render json: @curso}
      format.json{ render json: @curso}
    end
  end

  def buscar_encuestas_alumno
    @alumno = Alumno.where("correo = ?", params[:correo])
    @encuestas = []
    @alumno.each do |alumno|
      @encuesta_alumno = EncuestaAlumno.where(alumno_id: alumno.id, estado: true)
      @encuesta_alumno.each do |enc|
        @encuestas = @encuestas + (Encuestum.where(id: enc.encuesta_id))
      end
    end
    respond_to do |format|
      format.html { render json: @encuestas}
      format.json{ render json: @encuestas}
    end
  end

  def grupo_encuesta_pendiente
    @alumno = Alumno.where("correo = ?", params[:correo])
    @grupo = []
    @alumno.each do |alumnos|
      @encuesta_alumno= EncuestaAlumno.where("encuesta_id = ?", params[:encuesta_id])
      @encuesta_alumno.each do |encuesta|
        @encuestas = EncuestaAlumno.where(alumno_id: alumnos.id, encuesta_id: encuesta.encuesta_id)
        @encuestas.each do |grupos|
          @grupo_alumno= GrupoAlumno.where(alumno_id: grupos.alumno_id)
          @grupo_alumno.each do |g|
            @grupo= @grupo + (Grupo.where(id: g.grupo_id))
          end
        end
      end
    end
    respond_to do |format|
      format.html { render json: @grupo}
      format.json{ render json: @grupo}
    end
  end

  def grupo_encuesta
    @alumno = Alumno.where("correo = ?", params[:correo])
    @grupo = []
    @alumno.each do |alumnos|
      @encuesta_alumno= EncuestaAlumno.where("encuesta_id = ?", params[:encuesta_id])
      @encuesta_alumno.each do |encuesta|
        @encuestas = EncuestaAlumno.where(alumno_id: alumnos.id, encuesta_id: encuesta.encuesta_id)
        @encuestas.each do |grupos|
          @grupo_alumno= GrupoAlumno.where(alumno_id: grupos.alumno_id)
          @grupo_alumno.each do |g|
            @grupo= @grupo + (Grupo.where(id: g.grupo_id))
          end
        end
      end
    end
    respond_to do |format|
      format.html { render json: @grupo}
      format.json{ render json: @grupo}
    end
  end
  def incompletas_grupo
    @encuestas = []
    @alumnos =[]
    @grupo_alumno= GrupoAlumno.where("grupo_id = ?", params[:grupo_id])
    @grupo_alumno.each do |g|
      @encuestas = EncuestaAlumno.where(alumno_id: g.alumno_id, estado: false)
      @encuestas.each do |encuestas|
        @encuesta_habilitada = Encuestum.select(:id, :nombre).where(id: encuestas.encuesta_id, estado: true)
        @alumnos = @alumnos + @encuesta_habilitada
        @encuesta_habilitada.each do |en_ha|
          @alumnos = @alumnos + (Alumno.where(id: encuestas.alumno_id))
        end
      end
    end
    respond_to do |format|
      format.html { render json: @alumnos}
      format.json{ render json: @alumnos}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuesta_alumno
      @encuesta_alumno = EncuestaAlumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuesta_alumno_params
      params.require(:encuesta_alumno).permit(:estado, :alumno_id, :encuesta_id)
    end
end
