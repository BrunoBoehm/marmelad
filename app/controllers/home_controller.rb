class HomeController < ApplicationController
  def index
  	def index
    @posts = Post.all
  	end
  end
end
