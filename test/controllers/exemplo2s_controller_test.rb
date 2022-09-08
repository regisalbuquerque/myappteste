require "test_helper"

class Exemplo2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemplo2 = exemplo2s(:one)
  end

  test "should get index" do
    get exemplo2s_url
    assert_response :success
  end

  test "should get new" do
    get new_exemplo2_url
    assert_response :success
  end

  test "should create exemplo2" do
    assert_difference("Exemplo2.count") do
      post exemplo2s_url, params: { exemplo2: { codigo: @exemplo2.codigo, nome: @exemplo2.nome, numero: @exemplo2.numero } }
    end

    assert_redirected_to exemplo2_url(Exemplo2.last)
  end

  test "should show exemplo2" do
    get exemplo2_url(@exemplo2)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemplo2_url(@exemplo2)
    assert_response :success
  end

  test "should update exemplo2" do
    patch exemplo2_url(@exemplo2), params: { exemplo2: { codigo: @exemplo2.codigo, nome: @exemplo2.nome, numero: @exemplo2.numero } }
    assert_redirected_to exemplo2_url(@exemplo2)
  end

  test "should destroy exemplo2" do
    assert_difference("Exemplo2.count", -1) do
      delete exemplo2_url(@exemplo2)
    end

    assert_redirected_to exemplo2s_url
  end
end
