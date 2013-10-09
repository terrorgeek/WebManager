class BrandController < ApplicationController
  def listbrand
    @brand=Brand.find(:all)
  end

  def editform
    @brand=Brand.find(params[:id])
  end

  def brandform
  end

  def add
     @brand=Brand.new(params[:brand])
    if @brand.save
      flash[:add]="Add successed!"
      redirect_to :action=>"listbrand"
    else
      flash[:add]="Failed to add!"
      redirect_to :action=>"listbrand"
    end
  end

  def delete
     @provision=Brand.find(parmas[:id])
    @provision.delete
    redirect_to :action=>"listbrand"
  end

   def picture
    @picture=Brand.find(params[:id])
    send_data(@picture.brandlogo,:disposition=>"inline")
  end

   def edit
    @provision=Brand.find(params[:id])
    @provision.update_attributes(params[:brand])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listprovision"
  end

end
