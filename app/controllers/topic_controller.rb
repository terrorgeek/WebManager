class TopicController < ApplicationController
  def listtopic
    @topic=Topic.find(:all)
  end

  def editform
    @topic=Topic.find(params[:id])
  end

  def topicform
  end

  def add
     @topic=Topic.new(params[:topic])
    if @topic.save
      flash[:add]="Add successed!"
      redirect_to :action=>"listtopic"
    else
      flash[:add]="Failed to add!"
      redirect_to :action=>"listtopic"
    end
  end

  def edit
     @topic=Topic.find(params[:id])
    @topic.update_attributes(params[:topic])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listtopic"
  end

  def picture
    @picture=Topic.find(params[:id])
    send_data(@picture.topicimage,:disposition=>"inline")
  end

  def delete
    @topic=Topic.find(params[:id])
    @topic.delete
    redirect_to :action=>"listtopic"
  end

end
