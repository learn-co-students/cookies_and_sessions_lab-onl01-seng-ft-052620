class ProductsController < ApplicationController

    def index
    end

    def add
        cart << params[:product]

        redirect_to home_path_path
    end

end
