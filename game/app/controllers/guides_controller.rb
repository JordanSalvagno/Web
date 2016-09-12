class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  #GET vgames/:vgame_id/guides/new
  def new
    @vgame = Vgame.find params[:vgame_id]
    @guide = Guide.new
  end

  #GET /guides/1/edit
  def edit
  end

  #POST vgames:/:vgame_id/guides
  def create
    @vgame = Vgame.find params[:vgame_id]
    @guide = @vgame.guides.new(guide_params)
    if params[:guide][:uploaded_file].present?
      @guide.generate_filename
      @guide.user = current_user

      @upload_io = params[:guide][:uploaded_file]
      File.open(Rails.root.join('public', 'guides', @guide.fname), 'wb') do |file|
        file.write(@upload_io.read)
      end

      if @guide.save
        redirect_to vgame_url(@vgame), notice: 'Guide was successfuly added.'
      else
        redirect_to vgame_url(@vgame), notice: 'Guide was not added.'
      end
    else
        redirect_to vgame_url(@vgame), notice: 'Guide was not added.'
    end
  end

  #PATCH/PUT /guides/1
  def update
    if params[:guide][:uploaded_file].present?
      File.delete(Rails.root.join('public', 'guides', @guide.fname))
      @guide.generate_filename
      @guide.user = current_user

      @upload_io = params[:guide][:uploaded_file]
      File.open(Rails.root.join('public', 'guides', @guide.fname), 'wb') do |file|
        file.write(@upload_io.read)
      end
    end
    if @guide.update(title: params[:guide][:title])
      redirect_to vgame_url(@guide.vgame), notice: 'Guide was successfully updated.'
    else
      render :edit
    end
  end

  #DELETE /guides/1
  def destroy
    File.delete(Rails.root.join('public', 'guides', @guide.fname))
    @guide.destroy
    redirect_to vgame_url(@guide.vgame), notice: 'Guide was successfully destroyed.'
  end

  private
  def set_guide
    @guide = Guide.find(params[:id])
  end

  def guide_params
    params.require(:guide).permit(:title, :fname)
  end
end
