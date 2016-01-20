class CursoAlumnosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_curso_alumno, only: [:show, :edit, :update, :destroy]

  # GET /curso_alumnos
  # GET /curso_alumnos.json
  def index
    @curso_alumnos = CursoAlumno.all
  end

  # GET /curso_alumnos/1
  # GET /curso_alumnos/1.json
  def show
  end

  # GET /curso_alumnos/new
  def new
    @curso_alumno = CursoAlumno.new
  end

  # GET /curso_alumnos/1/edit
  def edit
  end

  # POST /curso_alumnos
  # POST /curso_alumnos.json
  def create
    @curso_alumno = CursoAlumno.new(curso_alumno_params)

    respond_to do |format|
      if @curso_alumno.save
        format.html { redirect_to @curso_alumno, notice: 'Curso alumno was successfully created.' }
        format.json { render :show, status: :created, location: @curso_alumno }
      else
        format.html { render :new }
        format.json { render json: @curso_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_alumnos/1
  # PATCH/PUT /curso_alumnos/1.json
  def update
    respond_to do |format|
      if @curso_alumno.update(curso_alumno_params)
        format.html { redirect_to @curso_alumno, notice: 'Curso alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso_alumno }
      else
        format.html { render :edit }
        format.json { render json: @curso_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_alumnos/1
  # DELETE /curso_alumnos/1.json
  def destroy
    @curso_alumno.destroy
    respond_to do |format|
      format.html { redirect_to curso_alumnos_url, notice: 'Curso alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def buscar_alumnos_curso
      @total_alumnos = []
      @curso_alumno= CursoAlumno.where("curso_id = ?", params[:curso_id])
      @curso_alumno.each do |alumnos|
        @total_alumnos = @total_alumnos + (Alumno.where(id: alumnos.alumno_id))
      end
      respond_to do |format|
        format.html { render json: @total_alumnos }
        format.json{ render json: @total_alumnos}
      end
    
  end

  def borrar_alumno_curso
    total = 0
    @curso_alumno = CursoAlumno.where(alumno_id: params[:alumno_id], curso_id: params[:curso_id])
    total = @curso_alumno.count
    @curso_alumno = CursoAlumno.where(alumno_id: params[:alumno_id], curso_id: params[:curso_id]).first
    if total !=0
      @curso_alumno.destroy
      respond_to do |format|
        format.html { render json: 'Borrado'}
        format.json { render json: 'Borrado'}
      end 
    else
      respond_to do |format|
        format.html { render json: 'No existe alumno'}
        format.json { render json: 'No existe alumno'}
      end 
    end 
  end

  def ayudante_curso
    @curso_alumno = []
    @alumno = Alumno.where("correo = ?", params[:correo])
    @alumno.each do |alumnos|
      @curso_alumno = @curso_alumno + (CursoAlumno.where(alumno_id: alumnos.id, ayudante: true))
    end
    @todo = []
    @curso_alumno.each do |cursos|
      @todo = @todo + (Curso.where(id: cursos.curso_id))
      @curso = Curso.where(id: cursos.curso_id)
      @curso.each do |c|
        @todo =@todo + (FuncionalidadAyudanteCurso.where(curso_alumno_id: cursos.id))
      end
    end
    respond_to do |format|
      format.html { render json: @todo}
      format.json{ render json: @todo}
    end
  end

  def es_ayudante
    @curso_alumno = CursoAlumno.where(
      curso_id: params[:curso_id],
      alumno_id: params[:alumno_id]
    )
    respond_to do |format|
      if @curso_alumno.update(curso_alumno_params)
        format.html { redirect_to @curso_alumno, notice: 'Grupo alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso_alumno }
      else
        format.html { render :edit }
        format.json { render json: @curso_alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  def datos_ayudante
    @alumno = []
    @curso = []
    @alumno_curso= CursoAlumno.where("curso_id = ?", params[:curso_id])
    @alumno_curso.each do |ac|
      @curso = CursoAlumno.where(ayudante: true, curso_id: ac.curso_id)
    end
    @curso.each do |c| 
        @alumno = @alumno + (Alumno.where(id: c.alumno_id))  
    end
    respond_to do |format|
      format.html { render json: @alumno}
      format.json{ render json: @alumno}
    end
  end

  def jefe_proyecto
    @alumno_curso = CursoAlumno.where(alumno_id: params[:alumno_id], curso_id: params[:curso_id], jefe_proyecto: true)

    respond_to do |format|
      format.html { render json: @alumno_curso}
      format.json{ render json: @alumno_curso}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_alumno
      @curso_alumno = CursoAlumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_alumno_params
      params.require(:curso_alumno).permit(:curso_id, :alumno_id, :ayudante, :estado, :jefe_proyecto)
    end
end
