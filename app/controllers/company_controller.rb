class CompanyController < ApplicationController
  def listcompany
    @company=Company.find(:all)
  end

  def companyform
  end

  def editform
    @company=Company.find(params[:id])
  end

  def add
     @company=Company.new(params[:company])
    if @company.save
      flash[:add]="Add successed!"
      redirect_to :action=>"listcompany"
    else
      flash[:add]="Failed to add!"
      redirect_to :action=>"listcompany"
    end
  end

  def delete
    @company=Company.find(parmas[:id])
    @company.delete
    redirect_to :action=>"listcompany"
  end

  def edit
    @company=Company.find(params[:id])
    @company.update_attributes(params[:company])
    flash[:update]="Edit successfully!"
    redirect_to :action=>"listcompany"
  end

end
