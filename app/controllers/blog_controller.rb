class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end
    def show
        @blog = Blog.find(params[:id])
    end
    def new
        @x = Blog.new
    end
    def create
        @blog = Blog.create(blog_params)
        if @blog.valid? 
            redirect_to blogs_path
        else
            redirect_to new_blog_path
        end
    end
    def update
        
    end
    def edit

    end
    def destroy

    end

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
