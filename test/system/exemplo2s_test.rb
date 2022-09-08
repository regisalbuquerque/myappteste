require "application_system_test_case"

class Exemplo2sTest < ApplicationSystemTestCase
  setup do
    @exemplo2 = exemplo2s(:one)
  end

  test "visiting the index" do
    visit exemplo2s_url
    assert_selector "h1", text: "Exemplo2s"
  end

  test "should create exemplo2" do
    visit exemplo2s_url
    click_on "New exemplo2"

    fill_in "Codigo", with: @exemplo2.codigo
    fill_in "Nome", with: @exemplo2.nome
    fill_in "Numero", with: @exemplo2.numero
    click_on "Create Exemplo2"

    assert_text "Exemplo2 was successfully created"
    click_on "Back"
  end

  test "should update Exemplo2" do
    visit exemplo2_url(@exemplo2)
    click_on "Edit this exemplo2", match: :first

    fill_in "Codigo", with: @exemplo2.codigo
    fill_in "Nome", with: @exemplo2.nome
    fill_in "Numero", with: @exemplo2.numero
    click_on "Update Exemplo2"

    assert_text "Exemplo2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Exemplo2" do
    visit exemplo2_url(@exemplo2)
    click_on "Destroy this exemplo2", match: :first

    assert_text "Exemplo2 was successfully destroyed"
  end
end
