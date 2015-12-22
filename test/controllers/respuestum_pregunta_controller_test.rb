require 'test_helper'

class RespuestumPreguntaControllerTest < ActionController::TestCase
  setup do
    @respuestum_preguntum = respuestum_pregunta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:respuestum_pregunta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create respuestum_preguntum" do
    assert_difference('RespuestumPreguntum.count') do
      post :create, respuestum_preguntum: { pregunta_id: @respuestum_preguntum.pregunta_id, respuesta_id: @respuestum_preguntum.respuesta_id, valor_opcion: @respuestum_preguntum.valor_opcion }
    end

    assert_redirected_to respuestum_preguntum_path(assigns(:respuestum_preguntum))
  end

  test "should show respuestum_preguntum" do
    get :show, id: @respuestum_preguntum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @respuestum_preguntum
    assert_response :success
  end

  test "should update respuestum_preguntum" do
    patch :update, id: @respuestum_preguntum, respuestum_preguntum: { pregunta_id: @respuestum_preguntum.pregunta_id, respuesta_id: @respuestum_preguntum.respuesta_id, valor_opcion: @respuestum_preguntum.valor_opcion }
    assert_redirected_to respuestum_preguntum_path(assigns(:respuestum_preguntum))
  end

  test "should destroy respuestum_preguntum" do
    assert_difference('RespuestumPreguntum.count', -1) do
      delete :destroy, id: @respuestum_preguntum
    end

    assert_redirected_to respuestum_pregunta_path
  end
end
