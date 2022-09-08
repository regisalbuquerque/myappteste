require "application_system_test_case"

class Exemplo1sTest < ApplicationSystemTestCase
  setup do
    @exemplo1 = exemplo1s(:one)
  end

  test "visiting the index" do
    visit exemplo1s_url
    assert_selector "h1", text: "Exemplo1s"
  end

  test "should create exemplo1" do
    visit exemplo1s_url
    click_on "New exemplo1"

    fill_in "Cpf", with: @exemplo1.cpf
    fill_in "Idade", with: @exemplo1.idade
    fill_in "Nome", with: @exemplo1.nome
    click_on "Create Exemplo1"

    assert_text "Exemplo1 was successfully created"
    click_on "Back"
  end

  test "should update Exemplo1" do
    visit exemplo1_url(@exemplo1)
    click_on "Edit this exemplo1", match: :first

    fill_in "Cpf", with: @exemplo1.cpf
    fill_in "Idade", with: @exemplo1.idade
    fill_in "Nome", with: @exemplo1.nome
    click_on "Update Exemplo1"

    assert_text "Exemplo1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Exemplo1" do
    visit exemplo1_url(@exemplo1)
    click_on "Destroy this exemplo1", match: :first

    assert_text "Exemplo1 was successfully destroyed"
  end
end
