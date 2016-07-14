class ProjectEmployeesController < ApplicationController
  before_action :set_project_employee, only: [:show, :edit, :update, :destroy]

  # GET /project_employees
  # GET /project_employees.json
  def index
    @project_employees = ProjectEmployee.all
  end

  # GET /project_employees/1
  # GET /project_employees/1.json
  def show
  end

  # GET /project_employees/new
  def new
    @project_employee = ProjectEmployee.new
  end

  # GET /project_employees/1/edit
  def edit
  end

  # POST /project_employees
  # POST /project_employees.json
  def create
    @project_employee = ProjectEmployee.new(project_employee_params)

    respond_to do |format|
      if @project_employee.save
        format.html { redirect_to @project_employee, notice: 'Project employee was successfully created.' }
        format.json { render :show, status: :created, location: @project_employee }
      else
        format.html { render :new }
        format.json { render json: @project_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_employees/1
  # PATCH/PUT /project_employees/1.json
  def update
    respond_to do |format|
      if @project_employee.update(project_employee_params)
        format.html { redirect_to @project_employee, notice: 'Project employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_employee }
      else
        format.html { render :edit }
        format.json { render json: @project_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_employees/1
  # DELETE /project_employees/1.json
  def destroy
    @project_employee.destroy
    respond_to do |format|
      format.html { redirect_to project_employees_url, notice: 'Project employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_employee
      @project_employee = ProjectEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_employee_params
      params.require(:project_employee).permit(:project_id, :employee_id, :role_id)
    end
end
