class UsuariosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        if @usuario.rol == 2
          @alumno = Alumno.create(rut: @usuario.rut, nombre: @usuario.nombre, apellido_paterno: @usuario.apellido_paterno, apellido_materno: @usuario.apellido_materno, correo: @usuario.correo, usuario_id: @usuario.id)
        elsif @usuario.rol == 1
          @profesor = Profesore.create(rut: @usuario.rut, nombre: @usuario.nombre, apellido_paterno: @usuario.apellido_paterno, apellido_materno: @usuario.apellido_materno, correo: @usuario.correo, usuario_id: @usuario.id)
        end  
        format.html { redirect_to @usuario, notice: 'Usuario was successfully created.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def buscar_por_correo
      @usuario= Usuario.where("correo = ?", params[:correo])
      

      respond_to do |format|
        format.html { render json: @usuario }
        format.json{ render json: @usuario}
      end
  end
  def buscar_por_rol
      @usuario= Usuario.where("rol = ?", params[:rol])

      respond_to do |format|
        format.html { render json: @usuario }
        format.json{ render json: @usuario}
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :rol, :estado)
    end
end
