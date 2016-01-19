class EvaluacionesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :set_evaluacione, only: [:show, :edit, :update, :destroy]

  # GET /evaluaciones
  # GET /evaluaciones.json
  def index
    @evaluaciones = Evaluacione.all
  end

  # GET /evaluaciones/1
  # GET /evaluaciones/1.json
  def show
  end

  # GET /evaluaciones/new
  def new
    @evaluacione = Evaluacione.new
  end

  # GET /evaluaciones/1/edit
  def edit
  end

  # POST /evaluaciones
  # POST /evaluaciones.json
  def create
    @evaluacione = Evaluacione.new(evaluacione_params)

    respond_to do |format|
      if @evaluacione.save
        format.html { redirect_to @evaluacione, notice: 'Evaluacione was successfully created.' }
        format.json { render :show, status: :created, location: @evaluacione }
      else
        format.html { render :new }
        format.json { render json: @evaluacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluaciones/1
  # PATCH/PUT /evaluaciones/1.json
  def update
    respond_to do |format|
      if @evaluacione.update(evaluacione_params)
        format.html { redirect_to @evaluacione, notice: 'Evaluacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluacione }
      else
        format.html { render :edit }
        format.json { render json: @evaluacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluaciones/1
  # DELETE /evaluaciones/1.json
  def destroy
    @evaluacione.destroy
    respond_to do |format|
      format.html { redirect_to evaluaciones_url, notice: 'Evaluacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def evaluaciones_curso
    @en = []
    @evaluaciones = Evaluacione.where("curso_id = ?", params[:curso_id])
    @evaluaciones.each do |evaluacion|
      @en = @en + (Encuestum.select(:estado, :nombre, :descripcion).where(id: evaluacion.encuesta_id)) + Evaluacione.where(encuesta_id: evaluacion.encuesta_id)
    end
    respond_to do |format|
      format.html { render json: @en}
      format.json{ render json: @en}
    end
  end

  def evaluaciones_curso_encuesta
    @en = []
    @evaluaciones = Evaluacione.where("curso_id = ?", params[:curso_id])
    @evaluaciones.each do |evaluacion|
      @en = Evaluacione.where("encuesta_id = ?", params[:encuesta_id])
    end
    respond_to do |format|
      format.html { render json: @en}
      format.json{ render json: @en}
    end
  end


  def total_encuestas
    @evaluaciones = Evaluacione.where("curso_id = ?", params[:curso_id])
    total_encuestas = 0
    @evaluaciones.each do |evaluacion|
      @evaluacion = Evaluacione.where("encuesta_id= ?", params[:encuesta_id])
      @evaluacion.each do |total|
        total_encuestas = total.contestada
      end
    end
    respond_to do |format|
      format.html { render json: total_encuestas}
      format.json{ render json: total_encuestas}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacione
      @evaluacione = Evaluacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluacione_params
      params.require(:evaluacione).permit(:contestada, :nombre, :curso_id, :encuesta_id)
    end
end
