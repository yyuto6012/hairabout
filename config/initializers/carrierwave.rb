CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     Settings.aws_access_key_id,
    aws_secret_access_key: Settings.aws_secret_access_key,
    region:                'ap-northeast-1',
  }

  case Rails.env
    when 'production'
      config.fog_directory  = 'hairabout'
      config.fog_public     = false
      config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" }

    when 'development'
      config.fog_directory  = 'hairabout'
      config.fog_public     = false
      config.fog_attributes = { cache_control: "public, max-age=#{365.day.to_i}" }
  end
end
