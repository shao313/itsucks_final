class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.body = params[:body]
    @comment.user_id = params[:user_id]
    @comment.complaint_id = params[:complaint_id]

    if @comment.save
      redirect_to :back, :notice => "Comment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.body = params[:body]
    @comment.user_id = params[:user_id]
    @comment.complaint_id = params[:complaint_id]

    if @comment.save
      redirect_to "/comments", :notice => "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy

    redirect_to :back, :notice => "Comment deleted."
  end
end
