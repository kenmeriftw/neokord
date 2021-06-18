require "test_helper"

class FibonacciNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fibonacci_number = fibonacci_numbers(:one)
  end

  test "should get index" do
    get fibonacci_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_fibonacci_number_url
    assert_response :success
  end

  test "should create fibonacci_number" do
    assert_difference('FibonacciNumber.count') do
      post fibonacci_numbers_url, params: { fibonacci_number: {  } }
    end

    assert_redirected_to fibonacci_number_url(FibonacciNumber.last)
  end

  test "should show fibonacci_number" do
    get fibonacci_number_url(@fibonacci_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_fibonacci_number_url(@fibonacci_number)
    assert_response :success
  end

  test "should update fibonacci_number" do
    patch fibonacci_number_url(@fibonacci_number), params: { fibonacci_number: {  } }
    assert_redirected_to fibonacci_number_url(@fibonacci_number)
  end

  test "should destroy fibonacci_number" do
    assert_difference('FibonacciNumber.count', -1) do
      delete fibonacci_number_url(@fibonacci_number)
    end

    assert_redirected_to fibonacci_numbers_url
  end
end
