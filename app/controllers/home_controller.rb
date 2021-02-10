class HomeController < ApplicationController
  def index
  end

  def about
    @me = 'this is all about me.  then, let\'s continue....'
  end
end
