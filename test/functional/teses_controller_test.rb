require 'test_helper'

class TesesControllerTest < ActionController::TestCase
  setup do
    @tese = teses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tese" do
    assert_difference('Tesis.count') do
      post :create, tese: { anio: @tese.anio, apellido: @tese.apellido, institucion: @tese.institucion, localizacion: @tese.localizacion, nombre: @tese.nombre, titulo: @tese.titulo }
    end

    assert_redirected_to tese_path(assigns(:tese))
  end

  test "should show tese" do
    get :show, id: @tese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tese
    assert_response :success
  end

  test "should update tese" do
    put :update, id: @tese, tese: { anio: @tese.anio, apellido: @tese.apellido, institucion: @tese.institucion, localizacion: @tese.localizacion, nombre: @tese.nombre, titulo: @tese.titulo }
    assert_redirected_to tese_path(assigns(:tese))
  end

  test "should destroy tese" do
    assert_difference('Tesis.count', -1) do
      delete :destroy, id: @tese
    end

    assert_redirected_to teses_path
  end
end
