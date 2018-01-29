require 'test_helper'

class RandNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rand_num = rand_nums(:one)
  end

  test "should get index" do
    get rand_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_rand_num_url
    assert_response :success
  end

  test "should create rand_num" do
    assert_difference('RandNum.count') do
      post rand_nums_url, params: { rand_num: { value: @rand_num.value } }
    end

    assert_redirected_to rand_num_url(RandNum.last)
  end

  test "should show rand_num" do
    get rand_num_url(@rand_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_rand_num_url(@rand_num)
    assert_response :success
  end

  test "should update rand_num" do
    patch rand_num_url(@rand_num), params: { rand_num: { value: @rand_num.value } }
    assert_redirected_to rand_num_url(@rand_num)
  end

  test "should destroy rand_num" do
    assert_difference('RandNum.count', -1) do
      delete rand_num_url(@rand_num)
    end

    assert_redirected_to rand_nums_url
  end
end
