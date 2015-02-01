class Verse < ActiveRecord::Base
  belongs_to :user

  def title
    text.split(/\n/)[0]
  end

  def body
    text.split(/\n/)[1..-1]
  end
end
