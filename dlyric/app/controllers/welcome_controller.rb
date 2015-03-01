class WelcomeController < ApplicationController
  def index
    @verses = Verse.all.reverse_order.limit(10)
    render "application"
  end
end
