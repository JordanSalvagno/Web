class PostsController < ApplicationController
  before_action :set_post, only: [:show,:edit, :update, :destroy]

  
  #GET /posts/1/edit
  def edit
  end

  #POST topics:/:topic_id/posts
  def create
    @user = current_user
    @topic = Topic.find params[:topic_id]
    @post = @topic.posts.new(post_params)
    @post.topic = @topic
    @post.user = @user
    
    if @post.save
      redirect_to topic_url(@topic), notice: 'Post was successfuly added.'
    else
      redirect_to topic_url(@topic), notice: 'Post was not added.'
    end
  end

  #PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to topic_url(@post.topic), notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  #DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to topic_url(@post.topic), notice: 'Post was successfully destroyed.'
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:message)
  end
end
