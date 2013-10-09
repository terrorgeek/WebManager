class Information < ActiveRecord::Base
  def uploaded_picture=(p)
    self.infoimage=p.read
  end
end
