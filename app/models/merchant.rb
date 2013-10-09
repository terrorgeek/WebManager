class Merchant < ActiveRecord::Base
  def uploaded_picture=(p)
    self.merchantimage=p.read
  end
end
