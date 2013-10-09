class Job < ActiveRecord::Base
   belongs_to :company
   set_table_name :jobs
end
