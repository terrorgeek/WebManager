class Company < ActiveRecord::Base
  set_table_name:company
   has_many :customuser
   has_many :job
   has_many :show
end
