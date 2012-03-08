class PagesController < ApplicationController
  def index
	@title = "Home"
  end

  def throw
	@title = "Throw"
  end

  def stats
	@title = "Stats"
  end

end
