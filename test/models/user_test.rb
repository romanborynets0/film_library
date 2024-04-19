require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    user = User.new(email: 'test3@gmail.com', password: 'tests12')
    assert user.save!
  end

  test "user was create" do
    assert_equal User.exists?(email: 'test@gmail.com'), true
  end
end
