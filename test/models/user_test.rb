require 'test_helper' 
class UserTest < ActiveSupport::TestCase
   test "user with all info should be created" do
     assert users(:Ned).save
   end

  test "Users should respect the username validation" do
    user1 = users(:Catelyn)
    bad = %w{ab abcdefghilopuytrasdf3 *$5%}
    ok = %w{abc abcdefghilopuytrasdf numbers123ok under_score_ok dot.is.ok}

    bad.each do |username|
      user1.username = username
      assert_not user1.valid?, "#{username} should not be valid"
    end

    ok.each do |username|
      user1.username = username
      assert user1.valid?, "#{username} should be valid"
    end

  end
end
