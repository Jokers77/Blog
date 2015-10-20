class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:name, :body))

		redirect_to post_path(@post)
	end

	def destroy
    @comment.destroy
    	respond_to do |format|
      		format.html { redirect_to comments_url, notice: 'Post was successfully destroyed.' }
      		format.json { head :no_content }
    	end
  	end

end
