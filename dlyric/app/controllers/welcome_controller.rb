class WelcomeController < ApplicationController
  def index
    @verses = Verse.all.reverse_order.limit(10)
    render "verse_scroll"
  end

  def about
  	render "misc/about"
  end
end
