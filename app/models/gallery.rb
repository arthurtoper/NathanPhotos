class Gallery < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true

  has_many :photographs, dependent: :destroy
end