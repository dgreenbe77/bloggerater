class BlogsController < ApplicationController
skip_before_filter :authenticate_user!

  def index
    if params["filter"].present?
      @blogs = Blog.order(ratings: :desc).limit(3)
    else
      @blogs = Blog.order(:created_at).limit(10)
    end
    # @blog = index_filter(params[:filter])
  end

  def show
    @blog = Blog.find(params[:id])

    # @subcategories = Subcategory.all
  end

  def new
    @blog = Blog.new
  end

# /blogs?filter=top-10
# /blogs?filter=10


  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user

    if @blog.save
      redirect_to @blog
    else
      render :new
    end


  end

private

  def blog_params
    params.require(:blog).permit!#(:url, :title, :description, rating: [], :subcategories_attributes, :rating_id, :subcategory_id)
  end

end


# Parameters:

# {"utf8"=>"✓",
#  "authenticity_token"=>"H2Ixs1s3Fv8NnoIpVcOkD4kqbO5/fs9UOj+sG9gOPoY=",
#  "blog"=>{"title"=>"adfa",
#  "url"=>"asfas",
#  "description"=>"sdafasasf",
#  "subcategories_attributes"=>{"0"=>{"id"=>"3"}},
#  "ratings_attributes"=>{"0"=>{"id"=>"9"}}},
#  "commit"=>"Create Blog"}
