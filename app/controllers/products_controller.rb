class ProductsController < ApplicationController

    def index
    end

    def add
        # product = Product.find_by(name: params[:product])
        # if product.nil?
        #     flash[:alert] = "Product not found"
        #     render :index
        # else
        #     session[:cart] << params[:product]
        #     redirect_to products_path
        # end
       cart << params[:product]
       redirect_to products_path
    end

end
