require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "user sees list of products" do
    visit "/"

    assert_selector "h1", text: "Awesome Products" # <---- looks for an H1 in the page with the given
  end

  test "user adds a product" do
    products_count = Product.count
    login_as users(:normal_user) # <--- this picks up from fixtures

    visit "/products/new"

    fill_in "Name", with: "Dog toy"
    fill_in "Tagline", with: "It's not your cellphone"

    click_on "Create Product"

    assert_equal "/", page.current_path
    assert_equal products_count + 1, Product.count
    assert_text "Dog toy"
  end
end

# System
# Features
# Application

# Unit test
