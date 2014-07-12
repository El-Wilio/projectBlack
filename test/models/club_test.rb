require 'test_helper'
class ClubTest < ActiveSupport::TestCase
  test "club with all OK parameters should register" do
    assert clubs(:Potatoes).save
  end

  test "A club should not register with description that doesn't fit" do
    bad = [".starting with punctuation", "us!ng ill3gal characters", "being waaaay too long, like the limit of characters that should be used is 128, but I think I might just pass that because who the fuck cares right?"]
    good = ["having a description with good punctuation!", "You can add multiple punctuations too!!!!", "or none at all"]

    bad.each do |description|
      clubs(:Cookies).description = description
      assert_not clubs(:Cookies).valid?, "#{description} should not be valid"
    end

    good.each do |description|
      clubs(:Cookies).description = description
      assert clubs(:Cookies).valid?, "#{description} should not be valid"
    end

  end

  test "empty description is transformed to 'no description'" do
    clubs(:Cookies).description = nil
    assert clubs(:Cookies).valid?
    assert_equal clubs(:Cookies).description, 'no description'
  end

  test "a club should not register with permalink that doesn't fit" do
    bad = ["ab", "orjustwaytoolongtofitinapermalink", "n0numb3rs", "no space either", "NoCaps", "nospecial!@#characters."]
    good = ["abc", "abcdefghuitertrtyutyrtert", "cookiedough"]

    bad.each do |permalink|
      clubs(:Gangsta).permalink = permalink
      assert_not clubs(:Gangsta).valid?, "#{permalink} should be valid"
    end
    
    good.each do |permalink|
      clubs(:Gangsta).permalink = permalink
      assert clubs(:Gangsta).valid?, "#{permalink} should be valid."
    end
  end

  test "a club should not register with a name that doesn't fit" do

    bad = ["ab", "The club name so large it will not fit in here ahaha", "no * or ? or !"]
    good = ["Good Name here", "can also accept 007", "lim", "50 characters is the max that a club name can have"]


    bad.each do |name|
      clubs(:Gangsta).name = name
      assert_not clubs(:Gangsta).valid?, "#{name} should be valid"
    end
    
    good.each do |name|
      clubs(:Gangsta).name = name
      assert clubs(:Gangsta).name?, "#{name} should be valid."
    end
  end
end


   

