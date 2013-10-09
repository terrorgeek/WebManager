class CompanydisplayerController < ApplicationController
   def company_template
       @company=Company.find(params[:id])
       session[:see_company]=@company
   end

   def company_job
       @company=session[:see_company]
   end

   def company_staff
       @company=session[:see_company]
   end

   def company_show
       @company=session[:see_company]
   end
end
