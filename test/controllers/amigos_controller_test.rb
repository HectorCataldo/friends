require "test_helper"

class AmigosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amigo = amigos(:one)
  end

  test "should get index" do
    get amigos_url
    assert_response :success
  end

  test "should get new" do
    get new_amigo_url
    assert_response :success
  end

  test "should create amigo" do
    assert_difference("Amigo.count") do
      post amigos_url, params: { amigo: { email: @amigo.email, first_name: @amigo.first_name, last_name: @amigo.last_name, phone: @amigo.phone, string: @amigo.string, twitter: @amigo.twitter } }
    end

    assert_redirected_to amigo_url(Amigo.last)
  end

  test "should show amigo" do
    get amigo_url(@amigo)
    assert_response :success
  end

  test "should get edit" do
    get edit_amigo_url(@amigo)
    assert_response :success
  end

  test "should update amigo" do
    patch amigo_url(@amigo), params: { amigo: { email: @amigo.email, first_name: @amigo.first_name, last_name: @amigo.last_name, phone: @amigo.phone, string: @amigo.string, twitter: @amigo.twitter } }
    assert_redirected_to amigo_url(@amigo)
  end

  test "should destroy amigo" do
    assert_difference("Amigo.count", -1) do
      delete amigo_url(@amigo)
    end

    assert_redirected_to amigos_url
  end
end
