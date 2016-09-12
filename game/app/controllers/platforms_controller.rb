class PlatformsController < ApplicationController
  before_action :set_platform, only: [:show, :edit, :update, :destroy]

  #GET /platforms
  def index
    @platformgames = @platform.all
  end

  #GET /platforms/1
  def show
    @platformgames = @platform.all
  end

  #GET /platforms/new
  def new
    @platform = Platform.new
  end

  #GET /platforms/1/edit
  def edit
  end

  #POST /platforms
  def create
    @platform = Platform.new(platform_params)

    if @platform.save
      redirect_to platform_url(@platform), notice: 'Platform was successfully added.'
    else
      render :new, notice: 'Platform failed to add.'
    end
  end

  #PATCH/PUT /platforms/1
  def update
    if @platform.update(update_params)
      redirect_to platform_url(@Platform), notice: 'Platform was successfully updated.'
    else
      render :edit, notice: 'Platform failed to update.'
    end
  end

  private
  def set_platform
    @platform = Platform.find(params[:id])
  end

  def platform_params
    params.require(:platform).permit(:name)
  end

end
