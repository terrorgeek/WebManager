class InformationController < ApplicationController
  def add
    @information=Information.new(params[:information])
    if @information.save
      flash[:add]="Added success!"
      redirect_to :action=>"listinfo"
    else
      flash[:add]="Fails to add!"
      redirect_to :action=>"listinfo"
    end

  end
  def informationform

  end
  def picture
    @picture=Information.find(params[:id])
    send_data(@picture.infoimage,:disposition=>"inline")
  end

  def listinfo
    @list=Information.find(:all)
  end

  def delete
    @delete=Information.find(params[:id])
    if @delete.delete
      redirect_to :action=>"listinfo"
    end
  end

  def editform
    @edit=Information.find(params[:id])
  end
  def edit
     @edit=Information.find(params[:id])
    @edit.update_attributes(params[:information])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listinfo"
  end

end
