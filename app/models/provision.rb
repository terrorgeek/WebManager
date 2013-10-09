class Provision < ActiveRecord::Base
  def uploaded_picture=(picture_field)
    self.imagedata=picture_field.read
  end
end
