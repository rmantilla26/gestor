class CprocessActivitiesController < ApplicationController
  before_action :set_cprocess_activity, only: [:show, :edit, :update, :destroy]

  # GET /cprocess_activities
  # GET /cprocess_activities.json
  def index
    @cprocess_activities = CprocessActivity.all
  end

  # GET /cprocess_activities/1
  # GET /cprocess_activities/1.json
  def show
  end

  # GET /cprocess_activities/new
  def new
    @cprocess_activity = CprocessActivity.new
  end

  # GET /cprocess_activities/1/edit
  def edit
  end

  # POST /cprocess_activities
  # POST /cprocess_activities.json
  def create
    @cprocess_activity = CprocessActivity.new(cprocess_activity_params)

    respond_to do |format|
      if @cprocess_activity.save
        format.html { redirect_to @cprocess_activity, notice: 'Cprocess activity was successfully created.' }
        format.json { render :show, status: :created, location: @cprocess_activity }
      else
        format.html { render :new }
        format.json { render json: @cprocess_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cprocess_activities/1
  # PATCH/PUT /cprocess_activities/1.json
  def update
    respond_to do |format|
      if @cprocess_activity.update(cprocess_activity_params)
        format.html { redirect_to @cprocess_activity, notice: 'Cprocess activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @cprocess_activity }
      else
        format.html { render :edit }
        format.json { render json: @cprocess_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cprocess_activities/1
  # DELETE /cprocess_activities/1.json
  def destroy
    @cprocess_activity.destroy
    respond_to do |format|
      format.html { redirect_to cprocess_activities_url, notice: 'Cprocess activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cprocess_activity
      @cprocess_activity = CprocessActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cprocess_activity_params
      params.require(:cprocess_activity).permit(:cprocess_id, :activity_id)
    end
end
