class LikesController < ApplicationController
  def create
    puts params.inspect
       @likable = nil
  	if(params[:slide_number].nil?)
      @likable = Document.find(params[:document_id])
    else
      @likable = Slide.find(params[:slide_number])
    end
    unless Like.find_by(user_id: current_user.id)
      like = Like.create(:user => current_user, likable: @likable )
    end
  	 
    redirect_to :back
  end

  def destroy
  	user = current_user
  	like = Like.find_by(:user_id => user.id)
  	like.destroy if like
  	redirect_to :back
  end

end