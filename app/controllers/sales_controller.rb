class SalesController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    def create
        @product =Product.find(params[:product_id])
        Sale.create!({
            product_id: @product.id,
            user_id: current_user.id 
        })
        @product.sold = true
        @product.save!
        redirect_to products_path, notice: 'producto vendido con exito'
    end

    def index
        @sales = current_user.sales
    end
end
