class DisplayController < ApplicationController
  def index
     @provision=Provision.find(:all)
     @buy=Buything.find(:all)
     @show=Show.find(:all)
     @information=Information.find(:all)
     @job=Job.find(:all)
     @topic=Topic.find(:all)
     @brand=Brand.find(:all)
     @footer_version=Baseconfig.find(:last)
     @module_exist=Mymodule.find(:all)
     @module_exist.each do |e|
       if e.modulename=="provision"&&e.status=="passed"
         @provision_module=e
       end
       if e.modulename=="buy"&&e.status=="passed"
         @buy_module=e
       end
       if e.modulename=="company"&&e.status=="passed"
         @company_module=e
       end
       if e.modulename=="show"&&e.status=="passed"
         @show_module=e
       end
       if e.modulename=="information"&&e.status=="passed"
         @information_module=e
       end
       if e.modulename=="merchantname"&&e.status=="passed"
         @merchant_modulen=e
       end
       if e.modulename=="brand"&&e.status=="passed"
         @brand_module=e
       end
       if e.modulename=="job"&&e.status=="passed"
         @job_module=e
       end
       if e.modulename=="topic"&&e.status=="passed"
         @topic_module=e
       end
     end
     render :layout => false
  end

  def realindex
     @provision=Provision.find(:all)
     @buy=Buything.find(:all)
     @show=Show.find(:all)
     @information=Information.find(:all)
     @job=Job.find(:all)
     @topic=Topic.find(:all)
     @brand=Brand.find(:all)
     @definition_display=Definitionindex.find(1)

  end

  def provision
    @provision=Provision.find(:all)
    @allcss=Allcss.find(1)
  end

  def buy
    @buy=Buything.find(:all)
    @allcss=Allcss.find(2)
  end

  def company
    @company=Company.find(:all)
    @allcss=Allcss.find(3)
  end

  def show
    @show=Show.find(:all)
    @allcss=Allcss.find(4)
  end

  def information
     @information=Information.find(:all)
     @allcss=Allcss.find(5)
  end

  def merchant
    @merchant=Merchant.find(:all)
    @allcss=Allcss.find(6)
  end

  def brand
    @brand=Brand.find(:all)
    @allcss=Allcss.find(7)
  end

  def job
    @job=Job.find(:all)
    @allcss=Allcss.find(8)
  end

  def topic
    @topic=Topic.find(:all)
    @allcss=Allcss.find(9)
  end

  def topicdetails
    @topicdetail=Topic.find(params[:id])
    @allcss=Allcss.find(9)
  end

   def topicpicture
    @picture=Topic.find(params[:id])
    send_data(@picture.topicimage,:disposition=>"inline")
  end

   #这是增加评论的方法
   def add_comment
     @topic=Topic.find(params[:id])
     unless session[:visitor_topic].nil?
       @topiccomment=@topic.topiccomment.new
       @topiccomment.body=params[:body]
       @topiccomment.visitor_id=session[:visitor_topic].id
       @topiccomment.save
     end
     unless session[:customer_topic].nil?
       @topiccomment=@topic.topiccomment.new
       @topiccomment.body=params[:body]
       @topiccomment.customuser_id=session[:customer_topic].id
       @topiccomment.save
     end
       redirect_to :action=>"topic"
   end

   def delete
     session[:visitor_topic]=nil
     session[:customer_topic]=nil
     redirect_to :controller=>"login",:action=>"loginform"
   end

   def company_template      
       @company=Company.find(params[:id])
   end

   def company_job
      
   end

   def company_staff
      
   end

   def company_show
       
   end
   
   def add_system_message
      @systemmessage=Systemmessage.new(params[:systemmessage])
      @systemmessage.save
      redirect_to :action=>"index"
   end

end
