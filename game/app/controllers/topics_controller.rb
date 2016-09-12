class TopicsController < ApplicationController
  before_action :set_topic, only: [:show,:edit, :update, :destroy]

  #GET vgames/:vgame_id/topics/1
  def show
  @posts = @topic.posts.all  
  @post = @topic.posts.new
  end

  #GET vgames/:vgame_id/topics/new
  def new
    @vgame = Vgame.find params[:vgame_id]
    @topic = Topic.new
  end
  
  #GET /topics/1/edit
  def edit
  end

  #POST vgames:/:vgame_id/topics
  def create
    @user = current_user
    @vgame = Vgame.find params[:vgame_id]
    @topic = @vgame.topics.new(topic_params)
    @topic.vgame = @vgame
    @topic.user = @user
    
    if @topic.save
      redirect_to vgame_url(@vgame), notice: 'Topic was successfuly added.'
    else
      redirect_to vgame_url(@vgame), notice: 'Topic was not added.'
    end
  end

  #PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      redirect_to vgame_url(@topic.vgame), notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  #DELETE /topics/1
  def destroy
    @topic.destroy
    redirect_to vgame_url(@topic.vgame), notice: 'Topic was successfully destroyed.'
  end

  private
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title)
  end
end
