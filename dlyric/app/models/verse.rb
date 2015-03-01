class Verse < ActiveRecord::Base
  belongs_to :user

  def title
    text.split(/\n/)[0]
  end

  def body
    # This might be too slow.
    # Maybe find a logical way to break down in db if need arises
    text.split(/\n/)[1..-1]
  end
end