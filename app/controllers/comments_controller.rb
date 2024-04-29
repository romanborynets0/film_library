class CommentsController < ApplicationController
  before_action :find_film
  before_action :find_comment, except: :create
  def create
    @comment = Comment.new(comment_params.merge!(user: current_user, commentable: @film))
    flash[:alert] = @comment.errors.full_messages.join(", ") unless @comment.save

    redirect_to @film

  end

  def edit
    authorize @comment
  end


  def update
    @comment.assign_attributes(comment_params)
    if @comment.save
      redirect_to @comment.commentable
    else
      flash[:alert] = @comment.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    authorize @comment
    @comment.destroy!
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
          .merge!(commentable: find_film, user: current_user)
  end

  def find_film
    @film = Film.find(params[:film_id])
  end
  def find_comment
    @comment = Comment.find(params[:id])
  end
end
