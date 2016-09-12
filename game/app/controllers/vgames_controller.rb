class VgamesController < ApplicationController
  before_action :set_vgame, only: [:show, :edit, :update, :destroy]

  #GET /vgames
  def index
    @vgames = Vgame.all
    @platforms = Platform.all
  end

  #GET /vgames/1
  def show
    @admin = true if user_signed_in? && current_user.admin == true else false
    @topics = @vgame.topics.all
    @reviews = @vgame.reviews.all
    @guides = @vgame.guides.all
    @vgame_platforms = @vgame.vgame_platforms.all
    @platforms = Platform.all
    @vgame_platform = VgamePlatform.new
    if File.exist?(Rails.root.join('public', 'games', @vgame.fname))
      @exist = true;
    else
      @exist = false;
    end
  end

  #GET /vgames/new
  def new
    @vgame = Vgame.new
  end

  #GET /vgames/1/edit
  def edit
  end

  #POST /images
  def create
    @vgame = Vgame.new(vgame_params)
    if params[:vgame][:uploaded_file].present?
      @vgame.generate_filename

      @upload_io = params[:vgame][:uploaded_file]
      File.open(Rails.root.join('public', 'games', @vgame.fname), 'wb') do |file|
        file.write(@upload_io.read)
      end

      if @vgame.save
        redirect_to vgame_url(@vgame), notice: 'Game was successfully added.'
      else
        render :new, notice: 'Game failed to add.'
      end
    else
      render :new, notice: 'Game failed to add.'
    end
  end

  #PATCH/PUT /vgames/1
  def update
    if params[:vgame][:uploaded_file].present?
      File.delete(Rails.root.join('public', 'games', @vgame.fname))
      @vgame.generate_filename

      @upload_io = params[:vgame][:uploaded_file]
      File.open(Rails.root.join('public', 'games', @vgame.fname), 'wb') do |file|
        file.write(@upload_io.read)
      end
    end
    if @vgame.update(update_params)
      redirect_to vgame_url(@vgame), notice: 'Game was successfully updated.'
    else
      render :edit, notice: 'Game failed to update.'
    end
  end

  #DELETE /vgames/1
  def destroy
    @vgame.destroy
    redirect_to vgames_path, notice: 'Game was removed.'
  end
  private
  def set_vgame
    @vgame = Vgame.find(params[:id])
  end

  def vgame_params
    params.require(:vgame).permit(:name, :genre, :developer, :release, :description, :fname)
  end

  def update_params
    params.require(:vgame).permit(:name, :genre, :developer, :release, :description)
  end
end
