class BuythingController < ApplicationController
  def buythingform
  end

  def listbuything
    @buy=Buything.find(:all)
  end

  def check
    @buy=Buything.find(params[:id])
    @buy.status="passed"
    @buy.save
    redirect_to :action=>"listbuything"
  end

  def check2
     @buy=Buything.find(params[:id])
    @buy.status="notpassed"
    @buy.save
    redirect_to :action=>"listbuything"
  end

  def add
     @buy=Buything.new(params[:buything])
     unless session[:visitor_buy].nil?
       @visitor=session[:visitor_buy]
       session[:visitor_buy]=nil
       @buy.visitors_id=@visitor.id
       @buy.save
       redirect_to :action=>"listbuything"
     end
     unless session[:customuser_buy].nil?
       @customer=session[:customuser_buy]
       session[:customuser_buy]=nil
       @buy.customusers_id=@customer.id
       @buy.save
       redirect_to :action=>"listbuything"
     end
  end

  def delete_buy
    @buy=Buything.find(params[:id])
    @buy.delete
    redirect_to :action=>"list_delete_buy"
  end

  def list_delete_buy
    @buy=Buything.find(:all)
  end

end
