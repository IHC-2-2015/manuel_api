require 'test_helper'

class GrupoAlumnosControllerTest < ActionController::TestCase
  setup do
    @grupo_alumno = grupo_alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_alumno" do
    assert_difference('GrupoAlumno.count') do
      post :create, grupo_alumno: { alumno_id: @grupo_alumno.alumno_id, grupo_id: @grupo_alumno.grupo_id }
    end

    assert_redirected_to grupo_alumno_path(assigns(:grupo_alumno))
  end

  test "should show grupo_alumno" do
    get :show, id: @grupo_alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_alumno
    assert_response :success
  end

  test "should update grupo_alumno" do
    patch :update, id: @grupo_alumno, grupo_alumno: { alumno_id: @grupo_alumno.alumno_id, grupo_id: @grupo_alumno.grupo_id }
    assert_redirected_to grupo_alumno_path(assigns(:grupo_alumno))
  end

  test "should destroy grupo_alumno" do
    assert_difference('GrupoAlumno.count', -1) do
      delete :destroy, id: @grupo_alumno
    end

    assert_redirected_to grupo_alumnos_path
  end
end
