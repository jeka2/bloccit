class PostsController < ApplicationController
  def index
    i = 1
    @posts = Post.all
    @posts.map do |post|
        if i == 1 || i % 5 == 0
            post.title = "SPAM"
        end
        i += 1
    end
  end

  def show
  end

  def new
  end

  def edit

  end
end
