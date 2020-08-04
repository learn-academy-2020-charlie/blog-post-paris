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
        @blog = Blog.create(
            title: params[:title],
            content: params[:content]
        )
        if @blog = valid?
            redirect_to all_blogs_path
        else
            redirect_to new_blog_path
    end
end
