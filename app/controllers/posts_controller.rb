class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def show
	@post = Post.find(params[:id])
	end
	def new
		@post = Post.new
	end
	def update

	end
	def destroy
		puts "PARAMS ARE" + params.inspect
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to "/posts"
	end
end

