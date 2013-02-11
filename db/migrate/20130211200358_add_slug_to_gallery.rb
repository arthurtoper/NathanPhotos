class AddSlugToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :slug, :string, unique: true
  end
end
