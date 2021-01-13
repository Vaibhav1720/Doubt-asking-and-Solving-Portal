class CommentsController < ApplicationController
    def create
      @doubt = Doubt.find(params[:doubt_id])
      @comment = @doubt.comments.create(comment_params)
      redirect_to doubt_path(@doubt)
    end
    def new
        @comment = Comment.new(params[:comment])
    end
    
    # def resolve
    # end
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
  end 