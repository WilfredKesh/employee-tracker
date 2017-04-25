class PostsController < ApplicationController

    def index
    end

    def new
        @post = Post.new
    end

    def create 
        @post = Post.new(post_params)
        if @post.save 
            redirect_to @post, notice: "post was succesfully created"
        else 
            render 'new'
        end
        
    end

    def show
    end
    


    
    private
    
    
    def post_params
        params.require(:post).permit(:date ,:rationale)
    end
     
end
