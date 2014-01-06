class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.find(params[:id]).destroy
    @post = Post.new(params[:post])
    @post.save
    redirect_to @post
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to '/posts'
  end


end