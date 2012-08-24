class AddGalleryIdToPhotograph < ActiveRecord::Migration
  def change
    add_column :photographs, :gallery_id, :integer
  end
end