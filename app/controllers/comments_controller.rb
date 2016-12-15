class CommentsController < ApplicationController

	def create
		@physio = Physio.find params[:physio_id]
		@comment = @physio.comments.new(comment_params)
		@comment.user_id = @current_user.id #sets the user_id FK
		@comment.save #saves the @comment

		respond_to do |format|
			format.html { redirect_to @physio }
		end
	end

	private
	def comment_params #This is the method which whitelists the data fields from the form
		params.require(:comment).permit(:content, :physio_id, :user_id, :stars)
	end

end
