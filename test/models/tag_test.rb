require 'test_helper'
class TagTest < ActiveSupport::TestCase

  test "a tag name should follow the validation" do
    tag = Tag.new
    bad = ["ab", "way too long for a tag name lol", "no n3mbers", "no spe(ial ch*rs"]
    good = ["abc", "just under the limit of chars", "CAPS ON"]
    
    bad.each do |name|
      tag.name = name
      assert_not tag.valid?, "#{name} is not a valid tag name"
    end

    good.each do |name|
      tag.name = name
      assert tag.valid?, "#{name} is a valid tag name"
    end
  end
end
