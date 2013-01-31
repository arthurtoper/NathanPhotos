module FormHelper

  def prepare_gallery(gallery)
  	if gallery.photographs.length < 10
    	(10 - gallery.photographs.length).times { gallery.photographs.build }
    else
    	gallery.photographs.build
    end
    gallery
  end
end
