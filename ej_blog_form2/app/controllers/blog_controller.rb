class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end 

    def new 
    end

    def create 
        @blog = Blog.create(blog_params)
        # (
        #     title: params[:title],
        #     content: params[:content]
        # )
        if @blog.valid?
            redirect_to all_blogs_path
        else
            redirect_to new_blog_path
        end
    end

    def delete
        @blog = Blog.find(params[:id])
        if @blog.destroy
            redirect_to all_blogs_path
        end
    end

    private 
    def blog_params
    params.require(:blog).permit(:title, :content)
    end
end
