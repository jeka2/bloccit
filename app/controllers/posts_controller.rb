class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
    i = 1
    @posts.map! do |post|
        if i == 1 || i % 5 == 0
            post.title = "SPAM"
        end
        i += 1
    end
  end
end
