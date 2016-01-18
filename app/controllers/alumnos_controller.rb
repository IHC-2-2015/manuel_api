class AlumnosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]

  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.all
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
  end

  # GET /alumnos/new
  def new
    @alumno = Alumno.new
  end

  # GET /alumnos/1/edit
  def edit
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = Alumno.new(alumno_params)
    respond_to do |format|
      if @alumno.save
        format.html { redirect_to @alumno, notice: 'Alumno was successfully created.' }
        format.json { render :show, status: :created, location: @alumno }
      else
        format.html { render :new }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnos/1
  # PATCH/PUT /alumnos/1.json
  def update
    respond_to do |format|
      if @alumno.update(alumno_params)
        format.html { redirect_to @alumno, notice: 'Alumno was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumno }
      else
        format.html { render :edit }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  def actualizar_alumno
    @alumno = Alumno.where(id: params[:id]).first
    @alumno.estado= params[:estado]
    @alumno.save
    @id_user = @alumno.usuario_id
    @usuario = Usuario.where(id: @id_user).first
    @usuario.estado= params[:estado]
    @usuario.save
    respond_to do |format|
      format.html { render json: @alumno}
      format.json{ render json: @alumno}
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno.destroy
    respond_to do |format|
      format.html { redirect_to alumnos_url, notice: 'Alumno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def grupos_alumno
      @grupos_alumno = []
      @grupos = []
      @alumno = Alumno.where("correo = ?", params[:correo])
      @alumno.each do |alumnos|
        @grupos_alumno = @grupos_alumno + (GrupoAlumno.where(alumno_id: alumnos.id))
      end
      @grupos_alumno.each do |grupos|
        @grupos = @grupos + (Grupo.where(id: grupos.grupo_id))
      end
      respond_to do |format|
        format.html { render json: @grupos}
        format.json{ render json: @grupos}
      end
  end

  def datos_alumno
    @alumno = Alumno.where("correo = ?", params[:correo])
    respond_to do |format|
      format.html { render json: @alumno}
      format.json{ render json: @alumno}
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumno_params
      params.require(:alumno).permit(:rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :usuario_id, :estado)
    end
end
