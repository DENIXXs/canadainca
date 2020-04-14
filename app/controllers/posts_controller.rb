class PostsController < ApplicationController
def index
	@posts = Post.all
end 

def new

end

def create
	@post = Post.new(post_params)

	if @post.save
		redirec_to @post
	else
		render 'new'
	end

end
def show
	@post = Post.find(params[:id])	
end

private
def post_params
	params.require(:post).permit(:name, :body)
end
	
end
