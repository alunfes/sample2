class SeeController < ApplicationController
  def index
=begin
  	ost = Post.find(1)
    Rails.logger.debug "See Index Kita "
    ost.update_attribute(:name, "chnaged")
=end
  	@posts = Post.all
  end

  def addOneEva
  	ost = Post.find(1)
    Rails.logger.debug "See addOne Kita "
    ost.update_attribute(:eva, ost.eva+1)
  end
end
