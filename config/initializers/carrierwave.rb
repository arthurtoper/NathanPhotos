CarrierWave.configure do |config|
	config.fog_credentials = {
		provider: 'AWS',
		aws_access_key_id: 'AKIAII4IXBSSTR2APYGQ',
    	aws_secret_access_key: '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',
    	region: 'eu-west-1'
	}
end

if Rails.env.development?
	CarrierWave.configure do |config|
		config.storage = :file
		#config.storage = :fog
		#config.fog_directory = 'nathanphotos-test'
	end
elsif Rails.env.test?
	CarrierWave.configure do |config|
		config.storage = :file
		config.enable_processing = false
	end
elsif Rails.env.production?
	CarrierWave.configure do |config|
		config.storage = :fog
		config.fog_directory = 'nathanphotos-test'
	end
end