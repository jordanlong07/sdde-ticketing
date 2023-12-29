class CommentController < ApplicationController
    def show
        @comments = Comment.where(ticket_id: params[@ticket.id])
    end

    def create
        puts "I am in the create method"
        @comment = Comment.new(new_comment_params)
        @comment.author = current_user.id
        @comment.save
        redirect_to ticket_path(@comment.ticket_id)
    end
    private
    def new_comment_params
        comment_params = params.require(:comment).permit(:body, :ticket_id)
    end
end
