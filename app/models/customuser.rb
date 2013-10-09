class Customuser < ActiveRecord::Base
  belongs_to :company
  has_many :buything
  has_many :topiccomment
end
