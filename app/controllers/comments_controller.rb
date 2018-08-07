# frozen_string_literal: true

# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show; end

  # GET /comments/new
  def new
    @comment = Comment.new
    @micropost = Micropost.new(params[:micropost])
  end

  # GET /comments/1/edit
  def edit; end

  # POST /comments
  # POST /comments.json
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create(
      params[:comment].permit(:name, :comment, :micropost_id)
    )
    redirect_to micropost_path(@micropost)

    # rubocop:disable all

    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end

    # rubocop:enable all
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html do
          redirect_to @comment,
                      notice: 'Comment was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json do
          render json: @comment.errors,
                 status: :unprocessable_entity
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
    redirect_to micropost_path(@micropost)

    # rubocop:disable all

    # @comment.destroy
    # respond_to do |format|
    #   format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    #   format.json { head :no_content }
    # end

    # rubocop:enable all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # rubocop:disable all

  # Never trust parameters from the scary internet, only allow the white list through.

  # rubocop:enable all

  def comment_params
    params.require(:comment).permit(:name, :comment, :micropost_id)
  end
end
