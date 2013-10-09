class LoginController < ApplicationController
  def loginform
  end

  def registerform
  end

  def loginerror
  end

  def registersuccess
    
  end

  def login
    username=params[:username]
    password=params[:password]
    customuser=Customuser.find(:all,:conditions=>"username='#{username}' and password='#{password}'")
    visitor=Visitor.find(:all,:conditions=>"username='#{username}' and password='#{password}'")
    if customuser.empty?&&visitor.empty?
      flash[:error]="Your username or password is wrong!"
      redirect_to :action=>"loginerror"
    else
      flash[:add]="Welcome #{username}!"
      unless visitor.empty?
        @visitor_buy=Visitor.find_by_username(params[:username])
        session[:visitor_buy]=@visitor_buy
        @visitor_topic=Visitor.find_by_username(params[:username])
        session[:visitor_topic]=@visitor_topic
        redirect_to :action=>"registersuccess"
      else
      @customuser_buy=Customuser.find_by_username(params[:username])
      session[:customuser_buy]=@customuser_buy
      @customuser=Customuser.find_by_username(params[:username])
     session[:customuser]=@customuser.company_id
     @customer_show=Customuser.find_by_username(params[:username])
     session[:customer_show]=@customer_show
     @customer_topic=Customuser.find_by_username(params[:username])
     session[:customer_topic]=@customer_topic
      redirect_to :action=>"registersuccess",:id=>session[:customuser]
      end
    end
  end

  def registerform2
    @company=Company.find(:all,:select=>"companyname")
  end

  def adduser
    @visitor=Visitor.new
    @visitor.username=params[:username]
    @visitor.password=params[:password]
    @visitor.age=params[:age]
    @visitor.cellphone=params[:cellphone]
    @visitor.gender=params[:gender]
    @visitor.qq=params[:qq]
    @visitor.save
    flash[:add]="注册成功，页面会在5秒后跳转的门户首页！"
    redirect_to :action=>"registersuccess"
  end

  def adduser2
    @temp=session[:obj]
    session[:obj]=nil
    @temp.companies_id=params[:id]
    @temp.save
    flash[:add]="注册成功，5秒后将跳转到门户首页！"
    redirect_to :action=>"registersuccess"
  end

  def companyselect
    @company=Company.find(:all)
    @customuser=Customuser.new
    @customuser.username=params[:username]
    @customuser.password=params[:password]
    session[:obj]=@customuser
  end

end
