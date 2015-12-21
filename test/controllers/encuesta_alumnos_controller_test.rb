require 'test_helper'

class EncuestaAlumnosControllerTest < ActionController::TestCase
  setup do
    @encuesta_alumno = encuesta_alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encuesta_alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encuesta_alumno" do
    assert_difference('EncuestaAlumno.count') do
      post :create, encuesta_alumno: { alumno_id: @encuesta_alumno.alumno_id, encuesta_id: @encuesta_alumno.encuesta_id, estado: @encuesta_alumno.estado }
    end

    assert_redirected_to encuesta_alumno_path(assigns(:encuesta_alumno))
  end

  test "should show encuesta_alumno" do
    get :show, id: @encuesta_alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encuesta_alumno
    assert_response :success
  end

  test "should update encuesta_alumno" do
    patch :update, id: @encuesta_alumno, encuesta_alumno: { alumno_id: @encuesta_alumno.alumno_id, encuesta_id: @encuesta_alumno.encuesta_id, estado: @encuesta_alumno.estado }
    assert_redirected_to encuesta_alumno_path(assigns(:encuesta_alumno))
  end

  test "should destroy encuesta_alumno" do
    assert_difference('EncuestaAlumno.count', -1) do
      delete :destroy, id: @encuesta_alumno
    end

    assert_redirected_to encuesta_alumnos_path
  end
end
