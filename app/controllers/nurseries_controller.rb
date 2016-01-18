class NurseriesController < ApplicationController
  before_action :set_nursery, only: [:show, :edit, :update, :destroy]

  # GET /nurseries
  # GET /nurseries.json
  def index
    @nurseries = Nursery.all
  end

  # GET /nurseries/1
  # GET /nurseries/1.json
  def show
  end

  # GET /nurseries/new
  def new
    @nursery = Nursery.new
  end

  # GET /nurseries/1/edit
  def edit
  end

  # POST /nurseries
  # POST /nurseries.json
  def create
    @nursery = Nursery.new(nursery_params)

    respond_to do |format|
      if @nursery.save
        format.html { redirect_to @nursery, notice: 'Nursery was successfully created.' }
        format.json { render :show, status: :created, location: @nursery }
      else
        format.html { render :new }
        format.json { render json: @nursery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nurseries/1
  # PATCH/PUT /nurseries/1.json
  def update
    respond_to do |format|
      if @nursery.update(nursery_params)
        format.html { redirect_to @nursery, notice: 'Nursery was successfully updated.' }
        format.json { render :show, status: :ok, location: @nursery }
      else
        format.html { render :edit }
        format.json { render json: @nursery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurseries/1
  # DELETE /nurseries/1.json
  def destroy
    @nursery.destroy
    respond_to do |format|
      format.html { redirect_to nurseries_url, notice: 'Nursery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nursery
      @nursery = Nursery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nursery_params
      params.require(:nursery).permit(:name, :age_group, :no_of_staff, :phone_number, :email, :location, :rating, :available_space, :about_us)
    end
end
