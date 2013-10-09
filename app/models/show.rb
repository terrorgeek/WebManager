class Show < ActiveRecord::Base
  belongs_to :company
  set_table_name :shows
  def uploaded_picture=(picture_field)
    self.showimage=picture_field.read
  end
end
