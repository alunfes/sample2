
class HomeController < ApplicationController
include CountNumber

  def index
  	@path = countNumberThread()
  end
end
