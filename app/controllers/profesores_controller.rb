class ProfesoresController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_profesore, only: [:show, :edit, :update, :destroy]

  # GET /profesores
  # GET /profesores.json
  def index
    @profesores = Profesore.all
  end

  # GET /profesores/1
  # GET /profesores/1.json
  def show
  end

  # GET /profesores/new
  def new
    @profesore = Profesore.new
  end

  # GET /profesores/1/edit
  def edit
  end

  # POST /profesores
  # POST /profesores.json
  def create
    @profesore = Profesore.new(profesore_params)

    respond_to do |format|
      if @profesore.save
        format.html { redirect_to @profesore, notice: 'Profesore was successfully created.' }
        format.json { render :show, status: :created, location: @profesore }
      else
        format.html { render :new }
        format.json { render json: @profesore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesores/1
  # PATCH/PUT /profesores/1.json
  def update
    respond_to do |format|
      if @profesore.update(profesore_params)
        format.html { redirect_to @profesore, notice: 'Profesore was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesore }
      else
        format.html { render :edit }
        format.json { render json: @profesore.errors, status: :unprocessable_entity }
      end
    end
  end

  def actualizar_profesor
    @profesor = Profesore.where(id: params[:id]).first
    @profesor.estado= params[:estado]
    @profesor.save
    @id_user = @profesor.usuario_id
    @usuario = Usuario.where(id: @id_user).first
    @usuario.estado= params[:estado]
    @usuario.save
    respond_to do |format|
      format.html { render json: @profesor}
      format.json{ render json: @profesor}
    end
  end

  # DELETE /profesores/1
  # DELETE /profesores/1.json
  def destroy
    @profesore.destroy
    respond_to do |format|
      format.html { redirect_to profesores_url, notice: 'Profesore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesore
      @profesore = Profesore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesore_params
      params.require(:profesore).permit(:rut, :nombre, :apellido_paterno, :apellido_materno, :correo, :descripcion, :usuario_id, :estado)
    end
end
