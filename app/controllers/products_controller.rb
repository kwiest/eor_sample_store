class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find params[:id]
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to products_path, notice: 'Product successfully created!'
    else
      render action: 'new'
    end
  end

  def update
    @product = Product.find params[:id]
    if @product.update_attributes product_params
      redirect_to products_path, notice: 'Product successfully updated!'
    else
      render action: 'edit'
    end
  end


  private

  def product_params
    params.require(:product).permit :name, :description, :base_price, :image_url
  end
end
