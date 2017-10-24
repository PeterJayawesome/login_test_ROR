OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '842842955875669', '6d60ba76f177e788d79055591aa84d8e'
end