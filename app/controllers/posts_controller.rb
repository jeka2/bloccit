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
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
     @post = Post.new
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]

     if @post.save
       flash[:notice] = "Post was saved."
       redirect_to @post
     else
       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :new
     end
   end

  def edit

  end
end
