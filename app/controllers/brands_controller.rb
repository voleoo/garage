class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  # GET /brands
  def index
    @brands = Brand.all
  end

  # GET /brands/1
  def show
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to @brand, notice: 'Brand was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /brands/1
  def update
    #@product = Product.find(params[:id])
    #if @product.update_attributes(params[:product])
    @brand = Brand.find(params[:id])
    if @brand.update_attributes(params[:brand])
      redirect_to @brand, notice: 'Brand was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
    redirect_to brands_url, notice: 'Brand was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brand_params
      params[:brand]
    end
end
