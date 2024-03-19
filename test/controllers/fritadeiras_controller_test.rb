require "test_helper"

class FritadeirasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fritadeira = fritadeiras(:one)
  end

  test "should get index" do
    get fritadeiras_url
    assert_response :success
  end

  test "should get new" do
    get new_fritadeira_url
    assert_response :success
  end

  test "should create fritadeira" do
    assert_difference("Fritadeira.count") do
      post fritadeiras_url, params: { fritadeira: { capacidade: @fritadeira.capacidade, category_id: @fritadeira.category_id, cod_interno: @fritadeira.cod_interno, modelo: @fritadeira.modelo, nome: @fritadeira.nome, voltagem: @fritadeira.voltagem } }
    end

    assert_redirected_to fritadeira_url(Fritadeira.last)
  end

  test "should show fritadeira" do
    get fritadeira_url(@fritadeira)
    assert_response :success
  end

  test "should get edit" do
    get edit_fritadeira_url(@fritadeira)
    assert_response :success
  end

  test "should update fritadeira" do
    patch fritadeira_url(@fritadeira), params: { fritadeira: { capacidade: @fritadeira.capacidade, category_id: @fritadeira.category_id, cod_interno: @fritadeira.cod_interno, modelo: @fritadeira.modelo, nome: @fritadeira.nome, voltagem: @fritadeira.voltagem } }
    assert_redirected_to fritadeira_url(@fritadeira)
  end

  test "should destroy fritadeira" do
    assert_difference("Fritadeira.count", -1) do
      delete fritadeira_url(@fritadeira)
    end

    assert_redirected_to fritadeiras_url
  end
end
