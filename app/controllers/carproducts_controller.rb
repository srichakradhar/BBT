class CarproductsController < ApplicationController
  before_action :set_carproduct, only: [:show, :edit, :update, :destroy]
   before_action :get_categories, only: [:new, :edit]
  # GET /carproducts
  # GET /carproducts.json
  def index
    @carproducts = Carproduct.all
  end

  # GET /carproducts/1
  # GET /carproducts/1.json
  def show
  end

  # GET /carproducts/new
  def new
    @carproduct = Carproduct.new
  end

  # GET /carproducts/1/edit
  def edit
  end

  # POST /carproducts
  # POST /carproducts.json
  def create
    @carproduct = Carproduct.new(carproduct_params)

    respond_to do |format|
      if @carproduct.save
        format.html { redirect_to @carproduct, notice: 'Carproduct was successfully created.' }
        format.json { render :show, status: :created, location: @carproduct }
      else
        format.html { render :new }
        format.json { render json: @carproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carproducts/1
  # PATCH/PUT /carproducts/1.json
  def update
    respond_to do |format|
      if @carproduct.update(carproduct_params)
        format.html { redirect_to @carproduct, notice: 'Carproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @carproduct }
      else
        format.html { render :edit }
        format.json { render json: @carproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carproducts/1
  # DELETE /carproducts/1.json
  def destroy
    @carproduct.destroy
    respond_to do |format|
      format.html { redirect_to carproducts_url, notice: 'Carproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carproduct
      @carproduct = Carproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carproduct_params
      params.require(:carproduct).permit(:name, :model, :fueltype, :price, :carcategory_id, :avatar)
    end
    def get_categories
	@carcategories = Carcategory.all.collect{|i| [i.name , i.id]} 
    end 
end
