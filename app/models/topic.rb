class Topic < ActiveRecord::Base
  has_many :topiccomment
  def uploaded_picture=(picture_field)
    self.topicimage=picture_field.read
  end
end
