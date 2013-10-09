class OffstageController < ApplicationController
   def index

   end

   def commentmanage
     @comment=Topiccomment.find(:all)
   end

   def delete_comment
     @comment=Topiccomment.find(params[:id])
     @comment.delete
     redirect_to :action=>"commentmanage"
   end

   def usermanage
     @customuser=Customuser.find(:all)
     render :layout=>"usermanage2"
   end

   def delete_visitor
     @visitor=Visitor.find(params[:sb])
     if !@visitor.nil?
       @visitor.delete
     end
     redirect_to :action=>"usermanage"
   end

   def delete_customuser
      @customuser=Customuser.find(params[:nb])
       if !@customuser.nil?
       @customuser.delete
     end
     redirect_to :action=>"usermanage"
   end

   def visitormanage
      @visitor=Visitor.find(:all)
      render :layout=>"usermanage2"
   end
end
