class JobController < ApplicationController
  def jobform
    @temp=session[:customuser]
  end

  def addsuccess
  end

  def listjob
    @job=Job.find(:all)
  end

  def add
     @job=Job.new(params[:job])
     @temp=session[:customuser]
     session[:customuser]=nil
     @job.company_id=@temp
     if @job.save
       flash[:add]
       redirect_to :action=>"addsuccess"
     else
       redirect_to :action=>"http://www.google.com"
     end
  end

  def check
    @job=Job.find(params[:id])
    @job.status="pass"
    @job.save
    redirect_to :action=>"list_job"
  end

  def uncheck
    @job=Job.find(params[:id])
    @job.status="notpassed"
    @job.save
    redirect_to :action=>"list_job"
  end

  def list_job
    @job=Job.find(:all)
  end

  def delete_job
    @job=Job.find(params[:id])
    @job.delete
    redirect_to :action=>"listjob"
  end

end
