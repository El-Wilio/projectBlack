require 'test_helper' 
class UserTest < ActiveSupport::TestCase
  test "user with all info should be created" do
    assert users(:Ned).save
  end

  test "Users should respect the username validation" do
    bad = %w{ab abcdefghilopuytrasdf3 *$5%}
    ok = %w{abc abcdefghilopuytrasdf numbers123ok under_score_ok dot.is.ok}

    bad.each do |username|
      users(:Catelyn).username = username
      assert_not users(:Catelyn).valid?, "#{username} should not be valid"
    end

    ok.each do |username|
      users(:Catelyn).username = username
      assert users(:Catelyn).valid?, "#{username} should be valid"
    end
    users(:Catelyn).username = nil
    assert_not users(:Catelyn).valid?, "username cannot be nul"
  end

  test "Username should be unique" do
    assert_not users(:Rob).valid?, "Rob can not have the same username as Bran"
    assert_not users(:Bran).valid?, "Bran can not have the same username as Rob"	
  end

  test "two passwords should not have the same encryption" do
    assert_not_equal users(:Arya).encrypted_password, users(:Sansa).encrypted_password
  end
  
end
