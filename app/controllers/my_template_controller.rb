class MyTemplateController < ApplicationController
  def user_manage
    render :layout=>"my_template_user"
  end

  def data_manage
    render :layout=>"my_template_data"
  end

  def module_manage
    @module=Mymodule.find(:all)
    render :layout=>"my_template_module"
  end

  def email_to_me
  end

  def websiteconfig
  end

  def exe_sql
   if ActiveRecord::Base.connection.execute(params[:sql])
     flash[:success]="SQL成功执行！"
     redirect_to :action=>"data_manage"
   else
     flash[:error]="SQL执行失败！"
   end
  end

  def topic_comment
    @comment=Topiccomment.find(:all)
    render :layout=>"my_template_data"
  end

  def delete_commment
    @comment=Topiccomment.find(params[:id])
    @comment.delete
    flash[:success]="删除成功"
    redirect_to :action=>"topic_comment"
  end

  def forbid
    @module=Mymodule.find(params[:id])
    @module.status="not passed"
    @module.save
    redirect_to :action=>"module_manage"
  end

  def open
    @module=Mymodule.find(params[:id])
    @module.status="passed"
    @module.save
    redirect_to :action=>"module_manage"
  end

end
