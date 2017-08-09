require 'test_helper'

class CaughtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caught = caughts(:one)
  end

  test "should get index" do
    get caughts_url
    assert_response :success
  end

  test "should get new" do
    get new_caught_url
    assert_response :success
  end

  test "should create caught" do
    assert_difference('Caught.count') do
      post caughts_url, params: { caught: { level: @caught.level } }
    end

    assert_redirected_to caught_url(Caught.last)
  end

  test "should show caught" do
    get caught_url(@caught)
    assert_response :success
  end

  test "should get edit" do
    get edit_caught_url(@caught)
    assert_response :success
  end

  test "should update caught" do
    patch caught_url(@caught), params: { caught: { level: @caught.level } }
    assert_redirected_to caught_url(@caught)
  end

  test "should destroy caught" do
    assert_difference('Caught.count', -1) do
      delete caught_url(@caught)
    end

    assert_redirected_to caughts_url
  end
end
