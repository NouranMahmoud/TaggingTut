CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["Access Key ID"],
    aws_secret_access_key: ENV["Secret Access Key"],
    region:                'ap-southeast-1'  
                          # required
    }
  config.fog_directory  = 'airbnb-photos-nextacademy'                                   # required
end

