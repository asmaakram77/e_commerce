class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    respond_with(@comments)}
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
   respond_with(@comments)
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_with(@comments)
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @product.comments.new(params[:comment])

    respond_to do |format|
     @comment = @product.comments.new(params[:comment])
        @comment.save
        redirect_to @comment.product
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
     @comment.update_attributes(params[:comment])
        respond_with(@comment)
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
   
    @comment.destroy
    respond_with(@comment)
    end
  end
  private
      def set_comment
        @comment = Comment.find(params[:id])
      end
end
