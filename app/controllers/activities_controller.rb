class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_cprocess, only: [:new, :create, :destroy, :edit, :update]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = @cprocess.activities.build
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
     @activity = @cprocess.activities.build(activity_params)
   
    respond_to do |format|
      if @activity.save
        format.html { redirect_to @cprocess, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @cprocess }
      else
        format.html { render :new }
        format.json { render json: @cprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @cprocess, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @cprocess }
      else
        format.html { render :edit }
        format.json { render json: @cprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to @cprocess, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_cprocess
      @cprocess = Cprocess.find(params[:cprocess_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:order, :title, :description, :role_id)
    end
end
