class ChildmindersController < ApplicationController
  before_action :set_childminder, only: [:show, :edit, :update, :destroy]

  # GET /childminders
  # GET /childminders.json
  def index
    @childminders = Childminder.all
  end

  # GET /childminders/1
  # GET /childminders/1.json
  def show
  end

  # GET /childminders/new
  def new
    @childminder = Childminder.new
  end

  # GET /childminders/1/edit
  def edit
  end

  # POST /childminders
  # POST /childminders.json
  def create
    @childminder = Childminder.new(childminder_params)

    respond_to do |format|
      if @childminder.save
        format.html { redirect_to @childminder, notice: 'Childminder was successfully created.' }
        format.json { render :show, status: :created, location: @childminder }
      else
        format.html { render :new }
        format.json { render json: @childminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /childminders/1
  # PATCH/PUT /childminders/1.json
  def update
    respond_to do |format|
      if @childminder.update(childminder_params)
        format.html { redirect_to @childminder, notice: 'Childminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @childminder }
      else
        format.html { render :edit }
        format.json { render json: @childminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childminders/1
  # DELETE /childminders/1.json
  def destroy
    @childminder.destroy
    respond_to do |format|
      format.html { redirect_to childminders_url, notice: 'Childminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_childminder
      @childminder = Childminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def childminder_params
      params.require(:childminder).permit(:name, :no_of_children, :phone_number, :email, :location, :rating, :about_me)
    end
end
