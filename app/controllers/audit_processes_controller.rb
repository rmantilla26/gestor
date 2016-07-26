class AuditProcessesController < ApplicationController
  before_action :set_audit_process, only: [:show, :edit, :update, :destroy]
 
  # GET /audit_processes
  # GET /audit_processes.json
  def index
    @audit_processes = AuditProcess.all
  end

  # GET /audit_processes/1
  # GET /audit_processes/1.json
  def show
  end

  # GET /audit_processes/new
  def new
    @audit_process = AuditProcess.new
  end

  # GET /audit_processes/1/edit
  def edit
  end

  # POST /audit_processes
  # POST /audit_processes.json
  def create
    @audit_process = AuditProcess.new(audit_process_params)

    respond_to do |format|
      if @audit_process.save
        format.html { redirect_to @audit_process, notice: 'Audit process was successfully created.' }
        format.json { render :show, status: :created, location: @audit_process }
      else
        format.html { render :new }
        format.json { render json: @audit_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_processes/1
  # PATCH/PUT /audit_processes/1.json
  def update
    respond_to do |format|
      if @audit_process.update(audit_process_params)
        format.html { redirect_to @audit_process, notice: 'Audit process was successfully updated.' }
        format.json { render :show, status: :ok, location: @audit_process }
      else
        format.html { render :edit }
        format.json { render json: @audit_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audit_processes/1
  # DELETE /audit_processes/1.json
  def destroy
    @audit_process.destroy
    respond_to do |format|
      format.html { redirect_to audit_processes_url, notice: 'Audit process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit_process
      @audit_process = AuditProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audit_process_params
      params.require(:audit_process).permit(:audit_id, :cprocess_id)
    end
end
