class ProductsController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	before_action :set_product, except: [:index, :new, :create]
	#GET /products
	def index
		@products = Product.all
	end
	#GET /products/:id
	def show
		
	end
	#GET /products/new
	def new
		@product = Product.new
	end
	#POST /products
	def create
		@product = current_user.products.new(product_params)

		if @product.save
			redirect_to @product		
		else
			render :new
		end
	end
	def edit
		
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end
	#PUT /products/:id
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render :edit
		end
	end
	private
	def set_product
		@product = Product.find(params[:id])
	end
	def product_params
		params.require(:product).permit(:name, :price)
	end
end