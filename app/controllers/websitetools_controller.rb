class WebsitetoolsController < ApplicationController
  def ipforbid
  end

  def wordfilter

  end
  
  def filter
    @result=[]
    @module=params[:module]
    @filter_core=params[:filtercore]
    @replace=params[:replace]
    if @module=="专题"
      @topic=Topic.find(:all)
      for topic in @topic
        topicname=topic.topicname.to_str.include?(@filter_core)
        topicdetails=topic.topicdetails.to_str.include?(@filter_core)
        topicid=topic.id
        if topicname!=nil||topicdetails!=nil
          topic=Topic_temp.new
          topic.topicname=topicname
          topic.topicdetails=topicdetails
          topic.topicid=topicid
          @result<<topic
        end
      end
      unless @result.empty?
        @topic.each do |t|
          if t.topicname[@filter_core]
            t.topicname[@filter_core]=@replace
          end
          if t.topicdetails[@filter_core]
            t.topicdetails[@filter_core]=@replace
          end
          t.save
        end
        @message="已搜索到包含有目标词语的模块,并且不良词语替换成功！"
      end
    end
    
    if @module=="求购"
      @buy=Buything.find(:all)
      for buy in @buy
        buytitle=buy.buytitle.to_str.include?(@filter_core)
        buyname=buy.buyname.to_str.include?(@filter_core)
        buydetails=buy.buydetails.to_str.include?(@filter_core)
        buyid=buy.id
        if buyname!=nil||buydetails!=nil||buytitle!=nil
          buy=Buy_temp.new
          buy.buyname=buyname
          buy.buydetails=buydetails
          buy.buytitle=buytitle
          buy.buyid=buyid
          @result<<buy
        end
      end
      unless @result.empty?
        @buy.each do |b|
          if b.buytitle[@filter_core]
            b.buytitle[@filter_core]=@replace
          end
          if b.buydetails[@filter_core]
            b.buydetails[@filter_core]=@replace
          end
          if b.buyname[@filter_core]
            b.buyname[@filter_core]=@replace
          end
          b.save
        end
        @message="已搜索到包含有目标词语的模块，并且不良词语过滤成功！"
      end
    end
    
    if @module=="供应"
      @provision=Provision.find(:all)
      for provision in @provision
        provisiontitle=provision.provisiontitle.to_str.include?(@filter_core)
        provisionname=provision.provisionname.to_str.include?(@filter_core)
        provisiondetails=provision.provisiondetails.to_str.include?(@filter_core)
        provisionid=provision.id
        if provisionname!=nil||provisiondetails!=nil||provisiontitle!=nil
          provision=Provision_temp.new
          provision.provisionname=provisionname
          provision.provisiondetails=provisiondetails
          provision.provisiontitle=provisiontitle
          provision.provisionid=provisionid
          @result<<provision
        end
      end
      unless @result.empty?
        @provision.each do |b|
          if b.provisiontitle[@filter_core]
            b.provisiontitle[@filter_core]=@replace
          end
          if b.provisiondetails[@filter_core]
            b.provisiondetails[@filter_core]=@replace
          end
          if b.provisionname[@filter_core]
            b.provisionname[@filter_core]=@replace
          end
          b.save
        end
        @message="已搜索到包含有目标词语的模块，并且不良词语过滤成功！"
      end
    end
    
     if @module=="资讯"
      @information=Information.find(:all)
      for information in @information
        title=information.title.to_str.include?(@filter_core)
        infodetails=information.infodetails.to_str.include?(@filter_core)
        infointroduction=information.infointroduction.to_str.include?(@filter_core)
        infoid=information.id
        if title!=nil||infodetails!=nil||infointroduction!=nil
          info=Information_temp.new
          info.title=title
          info.infodetails=infodetails
          info.infointroduction=infointroduction
          info.infoid=infoid
          @result<<info
        end
      end
      unless @result.empty?
        @information.each do |b|
          if b.title[@filter_core]
            b.title[@filter_core]=@replace
          end
          if b.infodetails[@filter_core]
            b.infodetails[@filter_core]=@replace
          end
          if b.infointroduction[@filter_core]
            b.infointroduction[@filter_core]=@replace
          end
          b.save
        end
        @message="已搜索到包含有目标词语的模块，并且不良词语过滤成功！"
      end
    end
    
    if @module=="招商"
      @merchant=Merchant.find(:all)
      for merchant in @merchant
        title=merchant.title.to_str.include?(@filter_core)
        merchantdetails=merchant.merchantdetails.to_str.include?(@filter_core)
        merchantid=merchant.id
        if title!=nil||merchantdetails!=nil
          merchant=Merchant_temp.new
          merchant.title=title
          merchant.merchantdetails=merchantdetails
          merchant.merchantid=merchantid
          @result<<merchant
        end
      end
      unless @result.empty?
        @merchant.each do |t|
          if t.title[@filter_core]
            t.title[@filter_core]=@replace
          end
          if t.merchantdetails[@filter_core]
            t.merchantdetails[@filter_core]=@replace
          end
          t.save
        end
        @message="已搜索到包含有目标词语的模块,并且不良词语替换成功！"
      end
    end
    
    if @module=="展会"
      @show=Show.find(:all)
      for show in @show
        showtitle=show.topicname.to_str.include?(@filter_core)
        showdetails=topic.topicdetails.to_str.include?(@filter_core)
        showid=show.id
        if showtitle!=nil||showdetails!=nil
          show=Show_temp.new
          show.showtitle=showtitle
          show.showdetails=showdetails
          show.showid=showid
          @result<<show
        end
      end
      unless @result.empty?
        @topic.each do |t|
          if t.showtitle[@filter_core]
            t.showtitle[@filter_core]=@replace
          end
          if t.showdetails[@filter_core]
            t.showdetails[@filter_core]=@replace
          end
          t.save
        end
        @message="已搜索到包含有目标词语的模块,并且不良词语替换成功！"
      end
    end
  end

  def renamefind
  end
  
  def systemmessage
    @count=0
    @systemmessage=Systemmessage.find(:all)
    for i in @systemmessage
       if i.flag=="notread"
         @count+=1
       end
    end
  end
  
  def delete_message
    @systemmessage=Systemmessage.find(params[:id])
    @systemmessage.delete
    redirect_to :action=>"systemmessage"
  end
  
  def read_details
    @systemmessage=Systemmessage.find(params[:id])
    @systemmessage.flag="read"
    @systemmessage.save
  end

end
