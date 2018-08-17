# frozen_string_literal: true

# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :set_current_user_comments, only: %i[mycomments]
  before_action :set_comment, only: %i[show edit update destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = if params[:micropost_id]
                  Comment.where(micropost_id: params[:micropost_id])
                else
                  Comment.all
                end
    @page_title = t('page_title', name: 'Comment')
  end

  # GET /comments/1
  # GET /comments/1.js
  def show
    @page_title = t('page_title', name: 'Comment')
  end

  def mycomments
    @page_title = t('page_title', name: 'My Comments')
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @page_title = t('page_title', name: 'New Comment')
  end

  # GET /comments/1/edit
  def edit
    @page_title = t('page_title', name: 'Edit Comment')
  end

  # POST /comments
  # POST /comments.json
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html do
          redirect_to micropost_path(@micropost), notice: t('created', name: 'Comment') # rubocop:disable all
        end
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json do
          render json: @comment.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html do
          redirect_to @comment, notice: t('updated', name: 'Comment')
        end
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json do
          render json: @comment.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html do
        redirect_to micropost_path(@micropost),
                    notice: t('destroyed', name: 'Comment')
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_current_user_comments
    @comments = current_user.comments
  end
  # Never trust parameters from the scary internet, only allow the white list through. # rubocop:disable all
  def comment_params
    params.require(:comment).permit(:name, :comment, :micropost_id)
  end
end
