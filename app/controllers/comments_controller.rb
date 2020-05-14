class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @picture = Picture.find(params[:picture_id])
  end

  def create
    #render html: "Saving Comment #{params}"
    @picture = Picture.find(params[:picture_id])
    @comment = Comment.create(name: params[:comment][:name], 
                            message: params[:comment][:message],
                           picture_id: params[:picture_id] )
    redirect_to picture_url(@picture)
  end
end
