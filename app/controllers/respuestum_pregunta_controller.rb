class RespuestumPreguntaController < ApplicationController
    skip_before_filter :verify_authenticity_token
  before_action :set_respuestum_preguntum, only: [:show, :edit, :update, :destroy]

  # GET /respuestum_pregunta
  # GET /respuestum_pregunta.json
  def index
    @respuestum_pregunta = RespuestumPreguntum.all
  end

  # GET /respuestum_pregunta/1
  # GET /respuestum_pregunta/1.json
  def show
  end

  # GET /respuestum_pregunta/new
  def new
    @respuestum_preguntum = RespuestumPreguntum.new
  end

  # GET /respuestum_pregunta/1/edit
  def edit
  end

  # POST /respuestum_pregunta
  # POST /respuestum_pregunta.json
  def create
    @respuestum_preguntum = RespuestumPreguntum.new(respuestum_preguntum_params)

    respond_to do |format|
      if @respuestum_preguntum.save
        format.html { redirect_to @respuestum_preguntum, notice: 'Respuestum preguntum was successfully created.' }
        format.json { render :show, status: :created, location: @respuestum_preguntum }
      else
        format.html { render :new }
        format.json { render json: @respuestum_preguntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respuestum_pregunta/1
  # PATCH/PUT /respuestum_pregunta/1.json
  def update
    respond_to do |format|
      if @respuestum_preguntum.update(respuestum_preguntum_params)
        format.html { redirect_to @respuestum_preguntum, notice: 'Respuestum preguntum was successfully updated.' }
        format.json { render :show, status: :ok, location: @respuestum_preguntum }
      else
        format.html { render :edit }
        format.json { render json: @respuestum_preguntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuestum_pregunta/1
  # DELETE /respuestum_pregunta/1.json
  def destroy
    @respuestum_preguntum.destroy
    respond_to do |format|
      format.html { redirect_to respuestum_pregunta_url, notice: 'Respuestum preguntum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuestum_preguntum
      @respuestum_preguntum = RespuestumPreguntum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respuestum_preguntum_params
      params.require(:respuestum_preguntum).permit(:respuesta_id, :pregunta_id, :valor_opcion)
    end
end
