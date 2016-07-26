class AuditProcessActivitiesController < ApplicationController
  before_action :set_audit_process_activity, only: [:show, :edit, :update, :destroy]

  # GET /audit_process_activities
  # GET /audit_process_activities.json
  def index
    @audit_process_activities = AuditProcessActivity.all
  end

  # GET /audit_process_activities/1
  # GET /audit_process_activities/1.json
  def show
  end

  # GET /audit_process_activities/new
  def new
    @audit_process_activity = AuditProcessActivity.new
  end

  # GET /audit_process_activities/1/edit
  def edit
  end

  # POST /audit_process_activities
  # POST /audit_process_activities.json
  def create
    @audit_process_activity = AuditProcessActivity.new(audit_process_activity_params)

    respond_to do |format|
      if @audit_process_activity.save
        format.html { redirect_to @audit_process_activity, notice: 'Audit process activity was successfully created.' }
        format.json { render :show, status: :created, location: @audit_process_activity }
      else
        format.html { render :new }
        format.json { render json: @audit_process_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_process_activities/1
  # PATCH/PUT /audit_process_activities/1.json
  def update

    if @audit_process_activity.completed 
      @audit_process_activity.completed = false
    else
     @audit_process_activity.completed = true
   end

   @audit_process_activity.save

    respond_to do |format|
      format.html { redirect_to @audit_process_activity, notice: 'Audit process activity was successfully updated' }
      format.js
      format.json { head :no_content }
    end

end

  # DELETE /audit_process_activities/1
  # DELETE /audit_process_activities/1.json
  def destroy
    @audit_process_activity.destroy
    respond_to do |format|
      format.html { redirect_to audit_process_activities_url, notice: 'Audit process activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit_process_activity
      @audit_process_activity = AuditProcessActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audit_process_activity_params
      params.require(:audit_process_activity).permit(:audit_id, :cprocess_id, :activity_id)
    end
  end
