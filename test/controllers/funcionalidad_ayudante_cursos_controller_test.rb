require 'test_helper'

class FuncionalidadAyudanteCursosControllerTest < ActionController::TestCase
  setup do
    @funcionalidad_ayudante_curso = funcionalidad_ayudante_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionalidad_ayudante_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionalidad_ayudante_curso" do
    assert_difference('FuncionalidadAyudanteCurso.count') do
      post :create, funcionalidad_ayudante_curso: { curso_alumno_id: @funcionalidad_ayudante_curso.curso_alumno_id, funcionalidad_id: @funcionalidad_ayudante_curso.funcionalidad_id }
    end

    assert_redirected_to funcionalidad_ayudante_curso_path(assigns(:funcionalidad_ayudante_curso))
  end

  test "should show funcionalidad_ayudante_curso" do
    get :show, id: @funcionalidad_ayudante_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcionalidad_ayudante_curso
    assert_response :success
  end

  test "should update funcionalidad_ayudante_curso" do
    patch :update, id: @funcionalidad_ayudante_curso, funcionalidad_ayudante_curso: { curso_alumno_id: @funcionalidad_ayudante_curso.curso_alumno_id, funcionalidad_id: @funcionalidad_ayudante_curso.funcionalidad_id }
    assert_redirected_to funcionalidad_ayudante_curso_path(assigns(:funcionalidad_ayudante_curso))
  end

  test "should destroy funcionalidad_ayudante_curso" do
    assert_difference('FuncionalidadAyudanteCurso.count', -1) do
      delete :destroy, id: @funcionalidad_ayudante_curso
    end

    assert_redirected_to funcionalidad_ayudante_cursos_path
  end
end
