require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name returns first and last name" do
    # SETUP
    user = User.new(first_name: "Jujuba", last_name: "Andrade")

    # EXERCISE
    users_full_name = user.full_name

    # ASSERT
    # assert users_full_name == "Jujuba Andrade"
    assert_equal "Jujuba Andrade", users_full_name

    # TEARDOWN
  end

  test "#full_name returns properly capitalized name" do
    # SETUP
    user = User.new(first_name: "CaIO", last_name: "AnDRade")

    # EXERCISE
    users_full_name = user.full_name

    # ASSERT
    assert_equal "Caio Andrade", users_full_name

    # TEARDOWN
  end

  test "#full_name returns just last name if first is not present" do
    # SETUP
    user = User.new(last_name: "Lennon")

    # EXERCISE
    users_full_name = user.full_name

    # ASSERT
    assert_equal "Lennon", users_full_name

    # TEARDOWN
  end
end
