class CarcategoriesController < ApplicationController
  before_action :set_carcategory, only: [:show, :edit, :update, :destroy]

  # GET /carcategories
  # GET /carcategories.json
  def index
    @carcategories = Carcategory.all
  end

  # GET /carcategories/1
  # GET /carcategories/1.json
  def show
  end

  # GET /carcategories/new
  def new
    @carcategory = Carcategory.new
  end
  def display
  	@category=Carcategory.find(params[:id])
        @products=@category.carproducts
  end
  # GET /carcategories/1/edit
  def edit
  end

  # POST /carcategories
  # POST /carcategories.json
  def create
    @carcategory = Carcategory.new(carcategory_params)

    respond_to do |format|
      if @carcategory.save
        format.html { redirect_to @carcategory, notice: 'Carcategory was successfully created.' }
        format.json { render :show, status: :created, location: @carcategory }
      else
        format.html { render :new }
        format.json { render json: @carcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carcategories/1
  # PATCH/PUT /carcategories/1.json
  def update
    respond_to do |format|
      if @carcategory.update(carcategory_params)
        format.html { redirect_to @carcategory, notice: 'Carcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @carcategory }
      else
        format.html { render :edit }
        format.json { render json: @carcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carcategories/1
  # DELETE /carcategories/1.json
  def destroy
    @carcategory.destroy
    respond_to do |format|
      format.html { redirect_to carcategories_url, notice: 'Carcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carcategory
      @carcategory = Carcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carcategory_params
      params.require(:carcategory).permit(:name, :description, :avatar)
    end
end
