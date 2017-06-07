require 'test_helper'

class PersonajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personaje = personajes(:one)
  end

  test "should get index" do
    get personajes_url
    assert_response :success
  end

  test "should get new" do
    get new_personaje_url
    assert_response :success
  end

  test "should create personaje" do
    assert_difference('Personaje.count') do
      post personajes_url, params: { personaje: { age: @personaje.age, creator: @personaje.creator, name: @personaje.name } }
    end

    assert_redirected_to personaje_url(Personaje.last)
  end

  test "should show personaje" do
    get personaje_url(@personaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_personaje_url(@personaje)
    assert_response :success
  end

  test "should update personaje" do
    patch personaje_url(@personaje), params: { personaje: { age: @personaje.age, creator: @personaje.creator, name: @personaje.name } }
    assert_redirected_to personaje_url(@personaje)
  end

  test "should destroy personaje" do
    assert_difference('Personaje.count', -1) do
      delete personaje_url(@personaje)
    end

    assert_redirected_to personajes_url
  end
end
