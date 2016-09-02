class SearchController < ApplicationController
  def create

     code = params[:keyword]

     @product=Product.find_by("code", code)

     if(@product)
          puts "exist #{@product.code}"
     else
          puts "not_exist"
     end

     respond_to do |format|
      format.json { render json: @product }
      format.html { redirect_to root_path }
      format.js
      #rails buscara un archivo create.js en relacion con el controlador
    end


  end
end
