# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
	include CarrierWave::MiniMagick

	def store_dir
		"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
	end

	version :tiny do
		process :resize_to_fill => [50, 50]
	end

	version :thumb do
		process :resize_to_limit => [80, 80]
	end

	version :medium do
		process :resize_to_fill => [463, 218, 'North']
	end

	version :large do
		process :resize_to_fit => [800, 80000]
	end

	def extension_white_list
		%w(jpg jpeg)
	end
end