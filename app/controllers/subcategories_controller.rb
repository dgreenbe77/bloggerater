# class SubcategoriesController < ApplicationController

#   def index
#     @subcategories = Subcategory.all
#   end

#   def show
#     @subcategory = Subcategory.new
#   end

#   def create
#     @subcategory = Subcategory.new(subcategory_params)
#     @subcategory.update(category_id: 1)

#     if @subcategory.save
#       redirect_to @subcategory
#     else
#       render :new
#     end
#   end


# private

#   def subcategory_params
#     params.require(:subcategory).permit!#(:url, :title, :description, rating: [], :subcategories_attributes, :rating_id, :subcategory_id)
#   end
# end
