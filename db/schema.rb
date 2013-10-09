# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110417140442) do

  create_table "allcsses", :force => true do |t|
    t.string   "margin_left"
    t.string   "margin_top"
    t.string   "draggable"
    t.string   "max_row"
    t.string   "picture"
    t.string   "max_comment"
    t.string   "footer"
    t.string   "advertise_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "baseconfigs", :force => true do |t|
    t.string   "websitename"
    t.string   "websiteurl"
    t.string   "websitelogo"
    t.string   "webcopyrights"
    t.integer  "webphone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", :force => true do |t|
    t.string   "brandname"
    t.binary   "brandlogo"
    t.string   "brandsite"
    t.text     "branddetails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buythings", :force => true do |t|
    t.string   "buytitle"
    t.string   "buyname"
    t.text     "buydetails"
    t.string   "status",         :default => "notpassed"
    t.integer  "customusers_id"
    t.integer  "visitors_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buythings", ["customusers_id"], :name => "customusers_id"
  add_index "buythings", ["visitors_id"], :name => "visitors_id"

  create_table "company", :force => true do |t|
    t.string   "companyname"
    t.string   "city"
    t.string   "logindate"
    t.text     "companydetails"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customusers", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customusers", ["company_id"], :name => "companies_id"

  create_table "definitionindices", :force => true do |t|
    t.string   "provision"
    t.string   "buy"
    t.string   "brand"
    t.string   "show"
    t.string   "job"
    t.string   "merchant"
    t.string   "provision_drag"
    t.string   "buy_drag"
    t.string   "brand_drag"
    t.string   "show_drag"
    t.string   "job_drag"
    t.string   "merchant_drag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information", :force => true do |t|
    t.string   "title"
    t.binary   "infoimage"
    t.text     "infodetails"
    t.string   "infointroduction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "jobtitle"
    t.string   "jobduty"
    t.integer  "amount"
    t.string   "jobcity"
    t.string   "degree"
    t.string   "contactus"
    t.text     "jobdetails"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     :default => "notpassed"
  end

  add_index "jobs", ["company_id"], :name => "company"

  create_table "managers", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "realname"
    t.string   "managertype", :default => "ordinary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", :force => true do |t|
    t.string   "title"
    t.binary   "merchantimage"
    t.text     "merchantdetails"
    t.integer  "contactme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modules", :force => true do |t|
    t.string   "modulename"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     :default => "passed"
  end

  create_table "offstagelogs", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagedetails", :force => true do |t|
    t.integer  "current_number"
    t.integer  "reqpro_number"
    t.integer  "product_number"
    t.integer  "boarddisplay_number"
    t.integer  "exhibition_number"
    t.integer  "pictrue_number"
    t.integer  "video_number"
    t.integer  "query_number"
    t.integer  "topic_number"
    t.integer  "firm_number"
    t.integer  "firm_news__number"
    t.integer  "current_price_number"
    t.integer  "merchants_deputy"
    t.integer  "jobhunter_number"
    t.integer  "info_number"
    t.integer  "download_number"
    t.integer  "image_link_number"
    t.integer  "word_link_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provisions", :force => true do |t|
    t.string   "provisionname"
    t.string   "provisiontitle"
    t.string   "provisiontype"
    t.string   "provisionstandards"
    t.string   "provisionbrand"
    t.string   "provisiondetails"
    t.binary   "imagedata"
    t.integer  "provisionprice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", :force => true do |t|
    t.string   "showtitle"
    t.string   "showcity"
    t.date     "datefrom"
    t.date     "dateto"
    t.string   "mansionname"
    t.text     "showdetails"
    t.string   "contactus"
    t.binary   "showimage"
    t.string   "status",      :default => "notpassed"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
  end

  add_index "shows", ["company_id"], :name => "companies_id"

  create_table "systemmessages", :force => true do |t|
    t.string   "username"
    t.text     "body"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topiccomments", :force => true do |t|
    t.text     "body"
    t.integer  "visitor_id"
    t.integer  "customuser_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "topicname"
    t.binary   "topicimage"
    t.text     "topicdetails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visitors", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "age"
    t.string   "gender"
    t.integer  "qq"
    t.integer  "cellphone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
