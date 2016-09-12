class VgamePlatformsController < ApplicationController
  before_action :set_vgame_platform, only: [:edit, :update, :destroy]

  #POST images:/:image_id/vgame_platforms
  def create
    @vgame = Vgame.find params[:vgame_id]
    if(params[:vgame_id] && params[:platform_id])
    @vgame_platform = @vgame.vgame_platforms.new(vgame_platform_params)
    @vgame_platform.vgame = @vgame
    @platform = Platform.find params[:platform_id]
    @vgame_platform.platform = @platform

    if @vgame_platform.save
      redirect_to vgame_url(@vgame), notice: "#{@vgame_platform.platform.name} was added."
    else
      redirect_to vgame_url(@vgame), notice: "no platform was added"
    end
    else
      redirect_to vgame_url(@vgame), notice: "no platform was added"
    end
  end

  # DELETE /vgame_platform/1
  def destroy
    @vgame_platform.destroy
    redirect_to vgame_url(@vgame_platform.vgame), notice: "#{@vgame_platform.platform.name} was removed"
  end

  private
  def set_vgame_platform
    @vgame_platform = VgamePlatform.find params[:id]
  end

  def vgame_platform_params
  end

end
