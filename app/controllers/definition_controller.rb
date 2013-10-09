class DefinitionController < ApplicationController
  def index

  end

  def update
    @def=Definitionindex.find(1)
   if @def.update_attributes(params[:definitionindex])
    redirect_to :action=>"index"
   end
  end

  def update_provision
    @provision_css=Allcss.find(1)
    if @provision_css.update_attributes(params[:allcss])
      redirect_to :action=>"provision_def"
    end
  end

  def update_buy
    @buy_css=Allcss.find(2)
    if @buy_css.update_attributes(params[:allcss])
      redirect_to :action=>"buy_def"
    end
  end

  def update_company
    @company_css=Allcss.find(3)
    if @company_css.update_attributes(params[:allcss])
      redirect_to :action=>"company_def"
    end
  end

  def update_show
    @show_css=Allcss.find(4)
    if @show_css.update_attributes(params[:allcss])
      redirect_to :action=>"show_def"
    end
  end

  def update_info
    @info_css=Allcss.find(5)
    if @info_css.update_attributes(params[:allcss])
      redirect_to :action=>"info_def"
    end
  end

  def update_merchant
    @merchant_css=Allcss.find(6)
    if @merchant_css.update_attributes(params[:allcss])
      redirect_to :action=>"merchant_def"
    end
  end

  def update_brand
    @brand_css=Allcss.find(7)
    if @brand_css.update_attributes(params[:allcss])
      redirect_to :action=>"brand_def"
    end
  end

  def update_job
    @job_css=Allcss.find(8)
    if @job_css.update_attributes(params[:allcss])
      redirect_to :action=>"job_def"
    end
  end

  def update_topic
    @topic_css=Allcss.find(9)
    if @topic_css.update_attributes(params[:allcss])
      redirect_to :action=>"topic_def"
    end
  end
end
