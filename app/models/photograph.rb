class Photograph < ActiveRecord::Base
  attr_accessible :image

  mount_uploader :image, ImageUploader

  belongs_to :gallery

  default_scope order('created_at asc')
end