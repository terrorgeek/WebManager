class Topiccomment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :visitor
  belongs_to :customuser
end
