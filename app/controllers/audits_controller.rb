class AuditsController < ApplicationController
  before_action :set_audit, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:show,:new, :create, :destroy, :edit, :update]

  # GET /audits
  # GET /audits.json
  def index
    @audits = Audit.all
  end

  # GET /audits/1
  # GET /audits/1.json
  def show
  end

  # GET /audits/new
  def new
    @audit = @project.audits.build 

  end

  # GET /audits/1/edit
  def edit
  end

  # POST /audits
  # POST /audits.json
  def create
    @audit = @project.audits.build(audit_params)

    respond_to do |format|
      if @audit.save
        format.html { redirect_to @project, notice: 'Audit was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audits/1
  # PATCH/PUT /audits/1.json
  def update
    respond_to do |format|
      if @audit.update(audit_params)
        format.html { redirect_to @project, notice: 'Audit was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audits/1
  # DELETE /audits/1.json
  def destroy
    @audit.destroy
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Audit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_audit
      @audit = Audit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audit_params
      params.require(:audit).permit(:project_id, :sprint, :description)
    end
end
