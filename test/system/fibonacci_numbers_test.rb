require "application_system_test_case"

class FibonacciNumbersTest < ApplicationSystemTestCase
  setup do
    @fibonacci_number = fibonacci_numbers(:one)
  end

  test "visiting the index" do
    visit fibonacci_numbers_url
    assert_selector "h1", text: "Fibonacci Numbers"
  end

  test "creating a Fibonacci number" do
    visit fibonacci_numbers_url
    click_on "New Fibonacci Number"

    click_on "Create Fibonacci number"

    assert_text "Fibonacci number was successfully created"
    click_on "Back"
  end

  test "updating a Fibonacci number" do
    visit fibonacci_numbers_url
    click_on "Edit", match: :first

    click_on "Update Fibonacci number"

    assert_text "Fibonacci number was successfully updated"
    click_on "Back"
  end

  test "destroying a Fibonacci number" do
    visit fibonacci_numbers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fibonacci number was successfully destroyed"
  end
end
