class ProvisionController < ApplicationController
  def addprovision
    @provision=Provision.new(params[:provision])
    if @provision.save
      flash[:add]="Add successed!"
      redirect_to :action=>"provisionform"
    else
      flash[:add]="Failed to add!"
      redirect_to :action=>"provisionform"
    end
  end

  def listprovision
    @provision=Provision.find(:all)
  end

  def checkprovision

  end
  def picture
    @picture=Provision.find(params[:id])
    send_data(@picture.imagedata,:disposition=>"inline")
  end

  def delete
    @provision=Provision.find(parmas[:id])
    @provision.delete
    redirect_to :action=>"listprovision"
  end
  def editform
    @provision=Provision.find(params[:id])
  end
  def edit
    @provision=Provision.find(params[:id])
    @provision.update_attributes(params[:provision])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listprovision"
  end

end
