class CommentsController < ApplicationController
	before_action :authorise
	
	def create
		@physio = Physio.find params[:physio_id]
		@comment = @physio.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
		
		respond_to do |format|
			format.html{redirect_to @physio}
		end
	end
	
	private
	def comment_params
			params.require(:comment).permit(:content, :physio_id, :user_id, :stars)
	end
end
