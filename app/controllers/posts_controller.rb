class PostsController < ApplicationController
  def index
    @posts = ButterCMS::Post.all(page: 1, page_size: 10)
  end

  def show
    slug = params["slug"]
    @post = ButterCMS::Post.find(slug).data
  end
end
