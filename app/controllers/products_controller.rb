class ProductsController < ApplicationController
	#GET /products
	def index
		@products = Product.all
	end
	#GET /products/:id
	def show
		@product = Product.find(params[:id])
	end
	#GET /products/new
	def new
		@product = Product.new
	end
	#POST /products
	def create
		@product = Product.new(name: params[:product][:name], price: params[:product][:price])

		if @product.save
			redirect_to @product		
		else
			render :new
		end
	end
	#PUT /products/:id
	def update
	end
end