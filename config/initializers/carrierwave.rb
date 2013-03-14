CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: 'AWS',
		aws_access_key_id: 'AKIAIZUZLO3PCXKN6U3Q',
    	aws_secret_access_key: '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',
    	region: 'eu-west-1'
	}
end

if Rails.env.development?
	CarrierWave.configure do |config|
		config.storage = :file
		# config.storage = :fog
		# config.fog_directory = 'nathanphotos'
	end
elsif Rails.env.test?
	CarrierWave.configure do |config|
		config.storage = :file
		config.enable_processing = false
	end
elsif Rails.env.production?
	CarrierWave.configure do |config|
		config.storage = :fog
		config.fog_directory = 'nathanphotos'
	end
end