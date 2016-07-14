class CprocessesController < ApplicationController
  before_action :set_cprocess, only: [:show, :edit, :update, :destroy]

  # GET /cprocesses
  # GET /cprocesses.json
  def index
    @cprocesses = Cprocess.all
  end

  # GET /cprocesses/1
  # GET /cprocesses/1.json
  def show
  end

  # GET /cprocesses/new
  def new
    @cprocess = Cprocess.new
  end

  # GET /cprocesses/1/edit
  def edit
  end

  # POST /cprocesses
  # POST /cprocesses.json
  def create
    @cprocess = Cprocess.new(cprocess_params)

    respond_to do |format|
      if @cprocess.save
        format.html { redirect_to @cprocess, notice: 'Cprocess was successfully created.' }
        format.json { render :show, status: :created, location: @cprocess }
      else
        format.html { render :new }
        format.json { render json: @cprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cprocesses/1
  # PATCH/PUT /cprocesses/1.json
  def update
    respond_to do |format|
      if @cprocess.update(cprocess_params)
        format.html { redirect_to @cprocess, notice: 'Cprocess was successfully updated.' }
        format.json { render :show, status: :ok, location: @cprocess }
      else
        format.html { render :edit }
        format.json { render json: @cprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cprocesses/1
  # DELETE /cprocesses/1.json
  def destroy
    @cprocess.destroy
    respond_to do |format|
      format.html { redirect_to cprocesses_url, notice: 'Cprocess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cprocess
      @cprocess = Cprocess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cprocess_params
      params.require(:cprocess).permit(:name, :purpose, :abbreviation, :area_id)
    end
end
