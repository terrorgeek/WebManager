class Visitor < ActiveRecord::Base
  has_many :buything
  has_many :topiccomment
end
