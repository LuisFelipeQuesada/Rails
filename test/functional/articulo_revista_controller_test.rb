require 'test_helper'

class ArticuloRevistaControllerTest < ActionController::TestCase
  setup do
    @articulo_revistum = articulo_revista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articulo_revista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articulo_revistum" do
    assert_difference('ArticuloRevistum.count') do
      post :create, articulo_revistum: { anio: @articulo_revistum.anio, apellido: @articulo_revistum.apellido, nombre: @articulo_revistum.nombre, numero: @articulo_revistum.numero, pagina: @articulo_revistum.pagina, titulo_articulo: @articulo_revistum.titulo_articulo, titulo_revista: @articulo_revistum.titulo_revista, volumen: @articulo_revistum.volumen }
    end

    assert_redirected_to articulo_revistum_path(assigns(:articulo_revistum))
  end

  test "should show articulo_revistum" do
    get :show, id: @articulo_revistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articulo_revistum
    assert_response :success
  end

  test "should update articulo_revistum" do
    put :update, id: @articulo_revistum, articulo_revistum: { anio: @articulo_revistum.anio, apellido: @articulo_revistum.apellido, nombre: @articulo_revistum.nombre, numero: @articulo_revistum.numero, pagina: @articulo_revistum.pagina, titulo_articulo: @articulo_revistum.titulo_articulo, titulo_revista: @articulo_revistum.titulo_revista, volumen: @articulo_revistum.volumen }
    assert_redirected_to articulo_revistum_path(assigns(:articulo_revistum))
  end

  test "should destroy articulo_revistum" do
    assert_difference('ArticuloRevistum.count', -1) do
      delete :destroy, id: @articulo_revistum
    end

    assert_redirected_to articulo_revista_path
  end
end
