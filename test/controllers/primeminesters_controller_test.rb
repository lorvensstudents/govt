require 'test_helper'

class PrimeminestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primeminester = primeminesters(:one)
  end

  test "should get index" do
    get primeminesters_url
    assert_response :success
  end

  test "should get new" do
    get new_primeminester_url
    assert_response :success
  end

  test "should create primeminester" do
    assert_difference('Primeminester.count') do
      post primeminesters_url, params: { primeminester: { discription: @primeminester.discription, duriation: @primeminester.duriation, name: @primeminester.name } }
    end

    assert_redirected_to primeminester_url(Primeminester.last)
  end

  test "should show primeminester" do
    get primeminester_url(@primeminester)
    assert_response :success
  end

  test "should get edit" do
    get edit_primeminester_url(@primeminester)
    assert_response :success
  end

  test "should update primeminester" do
    patch primeminester_url(@primeminester), params: { primeminester: { discription: @primeminester.discription, duriation: @primeminester.duriation, name: @primeminester.name } }
    assert_redirected_to primeminester_url(@primeminester)
  end

  test "should destroy primeminester" do
    assert_difference('Primeminester.count', -1) do
      delete primeminester_url(@primeminester)
    end

    assert_redirected_to primeminesters_url
  end
end
