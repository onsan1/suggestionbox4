class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])
  end

  def new
  end

  def create
  	 #@topic = Topic.new(params[:topic])
  	 #@topic = Topic.new(params.require(:topic).permit(:title,:description))
	@topic = Topic.new(topic_params)
  	if @topic.save
  	    redirect_to @topic
  	else
  	    render 'new'
  	end
  end

  def edit
  	@topic = Topic.fild(params[:id])
  end

  def destroy
	  @topic = Topic.find(params[:id])
	  @topic.destroy
	 
	  redirect_to topics_path
  end

  def update
  	@topic = Topic.find(params[:id])

  	if @topic.update(topic_params)
  		redirect_to @topic
  	else
  		render 'edit'
  	end
  end

  private
     def topic_params 
     	params.require(:topic).permit(:title, :description)
     end
end
