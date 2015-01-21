require 'test_helper'

class ArticuloPeriodicosControllerTest < ActionController::TestCase
  setup do
    @articulo_periodico = articulo_periodicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articulo_periodicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articulo_periodico" do
    assert_difference('ArticuloPeriodico.count') do
      post :create, articulo_periodico: { apellido: @articulo_periodico.apellido, fecha: @articulo_periodico.fecha, nombre: @articulo_periodico.nombre, pagina: @articulo_periodico.pagina, titulo_articulo: @articulo_periodico.titulo_articulo, titulo_perdico: @articulo_periodico.titulo_perdico }
    end

    assert_redirected_to articulo_periodico_path(assigns(:articulo_periodico))
  end

  test "should show articulo_periodico" do
    get :show, id: @articulo_periodico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articulo_periodico
    assert_response :success
  end

  test "should update articulo_periodico" do
    put :update, id: @articulo_periodico, articulo_periodico: { apellido: @articulo_periodico.apellido, fecha: @articulo_periodico.fecha, nombre: @articulo_periodico.nombre, pagina: @articulo_periodico.pagina, titulo_articulo: @articulo_periodico.titulo_articulo, titulo_perdico: @articulo_periodico.titulo_perdico }
    assert_redirected_to articulo_periodico_path(assigns(:articulo_periodico))
  end

  test "should destroy articulo_periodico" do
    assert_difference('ArticuloPeriodico.count', -1) do
      delete :destroy, id: @articulo_periodico
    end

    assert_redirected_to articulo_periodicos_path
  end
end
