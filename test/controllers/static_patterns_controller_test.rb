require 'test_helper'

class StaticPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @static_pattern = static_patterns(:one)
  end

  test "should get index" do
    get static_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_static_pattern_url
    assert_response :success
  end

  test "should create static_pattern" do
    assert_difference('StaticPattern.count') do
      post static_patterns_url, params: { static_pattern: {  } }
    end

    assert_redirected_to static_pattern_url(StaticPattern.last)
  end

  test "should show static_pattern" do
    get static_pattern_url(@static_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_static_pattern_url(@static_pattern)
    assert_response :success
  end

  test "should update static_pattern" do
    patch static_pattern_url(@static_pattern), params: { static_pattern: {  } }
    assert_redirected_to static_pattern_url(@static_pattern)
  end

  test "should destroy static_pattern" do
    assert_difference('StaticPattern.count', -1) do
      delete static_pattern_url(@static_pattern)
    end

    assert_redirected_to static_patterns_url
  end
end
