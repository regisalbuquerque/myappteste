require "test_helper"

class Exemplo1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemplo1 = exemplo1s(:one)
  end

  test "should get index" do
    get exemplo1s_url
    assert_response :success
  end

  test "should get new" do
    get new_exemplo1_url
    assert_response :success
  end

  test "should create exemplo1" do
    assert_difference("Exemplo1.count") do
      post exemplo1s_url, params: { exemplo1: { cpf: @exemplo1.cpf, idade: @exemplo1.idade, nome: @exemplo1.nome } }
    end

    assert_redirected_to exemplo1_url(Exemplo1.last)
  end

  test "should show exemplo1" do
    get exemplo1_url(@exemplo1)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemplo1_url(@exemplo1)
    assert_response :success
  end

  test "should update exemplo1" do
    patch exemplo1_url(@exemplo1), params: { exemplo1: { cpf: @exemplo1.cpf, idade: @exemplo1.idade, nome: @exemplo1.nome } }
    assert_redirected_to exemplo1_url(@exemplo1)
  end

  test "should destroy exemplo1" do
    assert_difference("Exemplo1.count", -1) do
      delete exemplo1_url(@exemplo1)
    end

    assert_redirected_to exemplo1s_url
  end
end
