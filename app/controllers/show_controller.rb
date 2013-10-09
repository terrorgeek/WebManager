class ShowController < ApplicationController
  def showform
  end

  def listshow
    @show=Show.find(:all)
  end

  def picture
    @picture=Show.find(params[:id])
    send_data(@picture.showimage,:disposition=>"inline")
  end

  def add
    @show=Show.new(params[:show])
    @temp=session[:customer_show]
    @show.company_id=@temp.company_id
    @show.save
    redirect_to :action=>"listshow"
  end
  def check
    @show=Show.find(params[:id])
    @show.status="passed"
    @show.save
    redirect_to :action=>"listshow"
  end

  def check2
    @show=Show.find(params[:id])
    @show.status="not passed"
    @show.save
    redirect_to :action=>"listshow"
  end

  def delete_session
    session[:visitor_buy]=nil
    redirect_to :controller=>"login",:action=>"loginform"
  end

  def showshow
    @show=Show.find(params[:id])
    company=@show.company_id
    @company=Company.find(company)
  end

end
