class Brand < ActiveRecord::Base
  def uploaded_picture=(p)
    self.brandlogo=p.read
  end
end
