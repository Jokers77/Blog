class PagesController < ApplicationController
  def home
  	@posts = Post.all
  end

  def show
  end

  def contact
  end
end
