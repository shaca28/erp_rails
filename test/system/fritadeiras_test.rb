require "application_system_test_case"

class FritadeirasTest < ApplicationSystemTestCase
  setup do
    @fritadeira = fritadeiras(:one)
  end

  test "visiting the index" do
    visit fritadeiras_url
    assert_selector "h1", text: "Fritadeiras"
  end

  test "should create fritadeira" do
    visit fritadeiras_url
    click_on "New fritadeira"

    fill_in "Capacidade", with: @fritadeira.capacidade
    fill_in "Category", with: @fritadeira.category_id
    fill_in "Cod interno", with: @fritadeira.cod_interno
    fill_in "Modelo", with: @fritadeira.modelo
    fill_in "Nome", with: @fritadeira.nome
    fill_in "Voltagem", with: @fritadeira.voltagem
    click_on "Create Fritadeira"

    assert_text "Fritadeira was successfully created"
    click_on "Back"
  end

  test "should update Fritadeira" do
    visit fritadeira_url(@fritadeira)
    click_on "Edit this fritadeira", match: :first

    fill_in "Capacidade", with: @fritadeira.capacidade
    fill_in "Category", with: @fritadeira.category_id
    fill_in "Cod interno", with: @fritadeira.cod_interno
    fill_in "Modelo", with: @fritadeira.modelo
    fill_in "Nome", with: @fritadeira.nome
    fill_in "Voltagem", with: @fritadeira.voltagem
    click_on "Update Fritadeira"

    assert_text "Fritadeira was successfully updated"
    click_on "Back"
  end

  test "should destroy Fritadeira" do
    visit fritadeira_url(@fritadeira)
    click_on "Destroy this fritadeira", match: :first

    assert_text "Fritadeira was successfully destroyed"
  end
end
