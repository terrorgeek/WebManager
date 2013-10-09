class MerchantController < ApplicationController
  def merchantform
  end

  def editform
    @merchant=Merchant.find(params[:id])
  end

  def listmerchant
    @merchant=Merchant.find(:all)
  end

  def add
     @merchant=Merchant.new(params[:merchant])
    if @merchant.save
      flash[:add]="Add successed!"
      redirect_to :action=>"listmerchant"
    else
      flash[:add]="Failed to add!"
      redirect_to :action=>"listmerchant"
    end
  end

  def delete
    @merchant=Merchant.find(params[:id])
    @merchant.delete
    redirect_to :action=>"listmerchant"
  end

  def edit
    @merchantn=Merchant.find(params[:id])
    @merchant.update_attributes(params[:provision])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listmerchant"
  end

    def picture
    @picture=Merchant.find(params[:id])
    send_data(@picture.merchantimage,:disposition=>"inline")
  end

end
