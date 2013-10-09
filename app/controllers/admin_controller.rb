class AdminController < ApplicationController
  def adminform
    unless session[:visitor_buy].nil?
      flash[:error]="你不是管理员，无权进入此页面！"
      redirect_to :controller=>"login",:action=>"registersuccess"
    end
  end

  def login
    username=params[:username]
    password=params[:password]
    managertype=params[:managertype]
    manager=Manager.find(:all,:conditions=>"username='#{username}' and password='#{password}' and managertype='#{managertype}'")
    unless manager.empty?
      session[:manager]=Manager.find_by_username(username)
      redirect_to :controller=>"offstage",:action=>"index"
    else
      render :text=>"您的用户名或密码或管理员类型错误...."
    end
  end

end
