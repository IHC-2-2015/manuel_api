class CursosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_curso, only: [:show, :edit, :update, :destroy]

  # GET /cursos
  # GET /cursos.json
  def index
    @cursos = Curso.all
  end

  # GET /cursos/1
  # GET /cursos/1.json
  def show
  end

  # GET /cursos/new
  def new
    @curso = Curso.new
  end

  # GET /cursos/1/edit
  def edit
  end

  # POST /cursos
  # POST /cursos.json
  def create
    @curso = Curso.new(curso_params)

    respond_to do |format|
      if @curso.save
        format.html { redirect_to @curso, notice: 'Curso was successfully created.' }
        format.json { render :show, status: :created, location: @curso }
      else
        format.html { render :new }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursos/1
  # PATCH/PUT /cursos/1.json
  def update
    respond_to do |format|
      if @curso.update(curso_params)
        format.html { redirect_to @curso, notice: 'Curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso }
      else
        format.html { render :edit }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursos/1
  # DELETE /cursos/1.json
  def destroy
    @curso.destroy
    respond_to do |format|
      format.html { redirect_to cursos_url, notice: 'Curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def cursos_profesor
      @cursos= Curso.where("profesor_id = ?", params[:profesor_id])
      respond_to do |format|
        format.html { render json: @cursos }
        format.json{ render json: @cursos}
      end
  end

  def cursos_alumno
    alumno = Alumno.find(params[:alumno_id])
    @cursos = alumno.cursos

    respond_to do |format|
      format.html { render json: @cursos }
      format.json{ render json: @cursos}
    end
  end

  def mostrar_cursos
      @cursos= Curso.all
      respond_to do |format|
        format.html { render json: @cursos }
        format.json{ render json: @cursos}
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso
      @curso = Curso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_params
      params.require(:curso).permit(:profesor_id, :nombre, :semestre, :ano, :descripcion, :id_unico, :estado)
    end

    def actualizar_curso
      #curso = Curso.find(params[:curso_id])
      @curso = Curso.where(id: params[:id]).first
      @curso.estado= params[:estado]
      @curso.save       
      respond_to do |format|
        format.html { render json: @curso}
        format.json{ render json: @curso}
    end
  end
end

