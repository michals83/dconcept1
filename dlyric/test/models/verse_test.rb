require 'test_helper'

class VerseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "method title: make first line the title" do
    text = "Two roads diverged in a yellow wood,
And sorry I could not travel both 
And be one traveler, long I stood 
And looked down one as far as I could 
To where it bent in the undergrowth;"
    test = Verse.create(:user_id => 1, :text => text, :points => 10)
    assert test.title == "Two roads diverged in a yellow wood,"
  end

  test "method body: return array of the rest of the text" do
    text = "Two roads diverged in a yellow wood,
And sorry I could not travel both 
And be one traveler, long I stood 
And looked down one as far as I could 
To where it bent in the undergrowth;"
    test = Verse.create(:user_id => 1, :text => text, :points => 10)
    assert test.body == ["And sorry I could not travel both ", "And be one traveler, long I stood ", "And looked down one as far as I could ", "To where it bent in the undergrowth;"]
  end
end
