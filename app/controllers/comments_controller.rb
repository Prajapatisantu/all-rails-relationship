class CommentsController < ApplicationController
   before_action :set_commentable
  
  def index
   @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
     @comment = @commentable.comments.create(comment_params)
      if @comment.save
        flash[:success] = "Your comment posted successfully"
        redirect_to projects_path
      else
        render :new
      end
  end

  private 

  def comment_params
     params.require(:comment).permit(:body)
  end
  

  def set_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  
end
 