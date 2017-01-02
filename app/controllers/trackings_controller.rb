class TrackingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /trackings
  def index
    @trackings = Tracking.all
  end

  # GET /trackings/1
  def show
    @tracking = Tracking.find(params[:id])
  end

  # GET /trackings/new
  def new
    @tracking = current_user.trackings.new
  end

  # GET /trackings/1/edit
  def edit
    @tracking = current_user.trackings.find(params[:id])
  end

  # POST /trackings
  def create
    @tracking = current_user.trackings.new(tracking_params)
    if @tracking.save
      redirect_to @tracking, notice: 'Tracking was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /trackings/1
  def update
    @tracking = current_user.trackings.find(params[:id])
    @tracking.project_id = params[:project_id]
    if @tracking.update(tracking_params)
      redirect_to @tracking, notice: 'Tracking was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /trackings/1
  def destroy
    @tracking = current_user.trackings.find(params[:id])
    @tracking.destroy
    redirect_to trackings_url, notice: 'Tracking was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def tracking_params
      params.require(:tracking).permit(:content)
      params.require(:tracking).permit(:project_id)
    end
end
