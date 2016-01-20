class FuncionalidadAyudanteCursosController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_funcionalidad_ayudante_curso, only: [:show, :edit, :update, :destroy]

  # GET /funcionalidad_ayudante_cursos
  # GET /funcionalidad_ayudante_cursos.json
  def index
    @funcionalidad_ayudante_cursos = FuncionalidadAyudanteCurso.all
  end

  # GET /funcionalidad_ayudante_cursos/1
  # GET /funcionalidad_ayudante_cursos/1.json
  def show
  end

  # GET /funcionalidad_ayudante_cursos/new
  def new
    @funcionalidad_ayudante_curso = FuncionalidadAyudanteCurso.new
  end

  # GET /funcionalidad_ayudante_cursos/1/edit
  def edit
  end

  # POST /funcionalidad_ayudante_cursos
  # POST /funcionalidad_ayudante_cursos.json
  def create
    @funcionalidad_ayudante_curso = FuncionalidadAyudanteCurso.new(funcionalidad_ayudante_curso_params)

    respond_to do |format|
      if @funcionalidad_ayudante_curso.save
        format.html { redirect_to @funcionalidad_ayudante_curso, notice: 'Funcionalidad ayudante curso was successfully created.' }
        format.json { render :show, status: :created, location: @funcionalidad_ayudante_curso }
      else
        format.html { render :new }
        format.json { render json: @funcionalidad_ayudante_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  def funcionalidad_ayudante
    curso = params[:curso_id]
    alumno = params[:alumno_id]   
    funcionalidad = params[:funcionalidad_id]    
    @curso_alumno = CursoAlumno.where(curso_id: curso, alumno_id: alumno).first
    curso_alumno_id = @curso_alumno.id
    @funcionalidad_ayudante_curso = FuncionalidadAyudanteCurso.create(curso_alumno_id: curso_alumno_id, funcionalidad_id: funcionalidad)
    respond_to do |format|
      if @funcionalidad_ayudante_curso.save
        format.html { redirect_to @funcionalidad_ayudante_curso, notice: 'Funcionalidad ayudante curso was successfully created.' }
        format.json { render :show, status: :created, location: @funcionalidad_ayudante_curso }
      else
        format.html { render :new }
        format.json { render json: @funcionalidad_ayudante_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  def listar_func_ayu
    @fac = FuncionalidadAyudanteCurso.where(
      curso_id: params[:curso_id],
      alumno_id: params[:alumno_id]
    )
    respond_to do |format|
      format.html { render json: @fac}
      format.json{ render json: @fac}
    end
  end

  def contar_funcionalidades
    cantidad = FuncionalidadAyudanteCurso.where(
      curso_id: params[:curso_id],
      alumno_id: params[:alumno_id]
    ).count

    respond_to do |format|
      format.html { render json: cantidad }
      format.json{ render json: cantidad}
    end

  end

  # PATCH/PUT /funcionalidad_ayudante_cursos/1
  # PATCH/PUT /funcionalidad_ayudante_cursos/1.json
  def update
    respond_to do |format|
      if @funcionalidad_ayudante_curso.update(funcionalidad_ayudante_curso_params)
        format.html { redirect_to @funcionalidad_ayudante_curso, notice: 'Funcionalidad ayudante curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @funcionalidad_ayudante_curso }
      else
        format.html { render :edit }
        format.json { render json: @funcionalidad_ayudante_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionalidad_ayudante_cursos/1
  # DELETE /funcionalidad_ayudante_cursos/1.json
  def destroy
    @funcionalidad_ayudante_curso.destroy
    respond_to do |format|
      format.html { redirect_to funcionalidad_ayudante_cursos_url, notice: 'Funcionalidad ayudante curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionalidad_ayudante_curso
      @funcionalidad_ayudante_curso = FuncionalidadAyudanteCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funcionalidad_ayudante_curso_params
      params.require(:funcionalidad_ayudante_curso).permit(:curso_id, :funcionalidad_id, :alumno_id)
    end
end
