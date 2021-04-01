# frozen_string_literal: true

class PostsController < ApplicationController

  def new
    not_signed_in_redirect
    session[:return_to] ||= request.referer
    @post = Post.new
  end

  def create
    not_signed_in_redirect
    @user = current_user

    if @user.posts.create(post_params)
    flash[:success] = "post successfully added!"
    redirect_to session.delete(:return_to)
  else
    flash.now[:error] = "post was not added, try again!"
    render "new"
  end
end

  def index
    not_signed_in_redirect
    @user = current_user
    @posts = Post.all
  end

  def edit
    not_signed_in_redirect
    session[:return_to] ||= request.referer
    @post = Post.find(params[:id])
    if !@post.editable?
      flash[:error] = "Posts can only be edited upto 10 minutes after creation."
      redirect_to session.delete(:return_to) 
    end
  end

  def update
    @post = Post.find(params[:id])
    if !@post.editable?
      flash[:error] = "Posts can only be edited up to 10 minutes after creation."
      redirect_to session.delete(:return_to) 
    end

    if @post.update(post_params)
      flash[:success] = "post successfully updated!"
      redirect_to session.delete(:return_to)    
    else
      flash.now[:error] = "post was not updated, try again!"
      render 'edit'
    end
  end

  def destroy
    session[:return_to] ||= request.referer
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to session.delete(:return_to)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comment.post_id = @post.id
    @comment.user_id = current_user.id
  end
  
  private

  def post_params
    params.require(:post).permit(:message)
  end
end
