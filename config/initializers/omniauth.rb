Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '347681611936001', 'baedefb2c9dc65ff0a06d6c0746f7397'
end