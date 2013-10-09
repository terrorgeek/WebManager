class WebsiteconfigController < ApplicationController
  def baseconfig
      render :layout=>"baseconfig"
  end

  def pagedetails
    render :layout=>"baseconfig"
  end

  def disposebaseconfig
    @newbaseconfig=Baseconfig.new
    @newbaseconfig.websitename=params[:websitename]
    @newbaseconfig.websiteurl=params[:websiteurl]
    @newbaseconfig.websitelogo=params[:websitelogo]
    @newbaseconfig.webcopyrights=params[:copyrights]
    @newbaseconfig.webphone=params[:phone]
    @newbaseconfig.save
    flash[:update]="基本配置信息已修改！"
    redirect_to :action=>"baseconfig"
  end

  def disposepagedetails
      @pagedetails=Pagedetails.new
      @pagedetails.current_number=params[:current_number]
      @pagedetails.reqpro_number=params[:reqpro_number]
      @pagedetails.product_number=params[:product_number]
      @pagedetails.boarddisplay_number=params[:boarddisplay_number]
      @pagedetails.exhibition_number=params[:exhibition_number]
      @pagedetails.pictrue_number=params[:pictrue_number]
      @pagedetails.video_number=params[:video_number]
      @pagedetails.query_number=params[:query_number]
      @pagedetails.topic_number=params[:topic_number]
      @pagedetails.firm_number=params[:firm_number]
      @pagedetails.firm_news__number=params[:firm_news_number]
      @pagedetails.current_price_number=params[:current_price_number]
      @pagedetails.merchants_deputy=params[:merchants_deputy]
      @pagedetails.jobhunter_number=params[:jobhunter_number]
      @pagedetails.info_number=params[:info_number]
      @pagedetails.download_number=params[:download_number]
      @pagedetails.image_link_number=params[:image_link_number]
      @pagedetails.word_link_number=params[:word_link_number]
      @pagedetails.save
      flash[:update]="页面详细信息已修改！"
      redirect_to :action=>"pagedetails"
  end

  def managermanagement

  end

  def partial_addmanager

  end

  def partial_deletemanager
      @manager=Manager.find(:all)
  end

  def partial_listmanager
      @manager=Manager.find(:all)
  end

  def partial_editmanager
      @manager=Manager.find(:all)
  end

  def dispose_partial_addmanager
      @newmanager=Manager.new
      @newmanager.username=params[:username]
      @newmanager.password=params[:password]
      @newmanager.realname=params[:realname]
      @newmanager.managertype=params[:managertype]
      @newmanager.save
      flash[:update]="管理员信息添加成功！"
      redirect_to :action=>"managermanagement"
  end

  def dispose_partial_deletemanager
     @manager=Manager.find(params[:id])
     @managername=@manager.username
     @manager.delete
     flash[:delete]="删除成功,管理员"+@managername+"已被删除"
     redirect_to :action=>"partial_deletemanager"
  end

  def dispose_partial_editmanager
      @editmanager=Manager.find(params[:id])
    #  @username=@editmanager.username
    #  @password=@editmanager.password
    #  @realname=@editmanager.realname
    #  @managertype=@editmanager.managertype
  end

  def realdispose
    @manager=Manager.find(params[:id])
   # @manager.update_attributes({"username"=>params[:username],"password"=>params[:password],"realname"=>params[:realname],"managertype"=>params[:managertype]})
    @manager.username=params[:username]
    @manager.password=params[:password]
    @manager.realname=params[:realname]
    @manager.managertype=params[:managertype]
    @manager.save
    flash[:update]="管理员信息修改成功！"
    redirect_to :action=>"partial_editmanager"
  end

  def delete_session
    session[:manager]=nil
    redirect_to :controller=>"admin",:action=>"adminform"
  end

  def modulemanagement
    @m=Mymodule.find(:all)
    render :layout=>"baseconfig"
  end

  def updatemodule
    @m=Mymodule.find(params[:id])
    render :layout=>false
  end

  def deletemodule
     a=0
     count=Mymodule.find(:all)
     count.each { |c|
       a=a+1
     }
     if a<4
       flash[:small]="最少要四个模块，您不能再删了！"
       redirect_to :action=>"modulemanagement"
     else
        @m=Mymodule.find(params[:id])
    @m.delete
    redirect_to :action=>"modulemanagement"
     end
   
  end

  def addmodule
    a=0
     count=Mymodule.find(:all)
     count.each { |c|
       a=a+1
     }
     if a>8
       flash[:big]="最多只能定义九个模块！"
       redirect_to :action=>"modulemanagement"
     else
     @m=Mymodule.new
     @m.modulename=params[:modulename]
     @m.save
     redirect_to :action=>"modulemanagement"
     end
  end

  def edit
    @m=Mymodule.find(params[:id])
    @m.modulename=params[:mymodule]
    @m.save
    redirect_to :action=>"modulemanagement"
  end

end
