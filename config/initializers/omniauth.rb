OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '227668764045536', 'f6c3f56f2f07474892d0848721817cee',
  :scope => 'email,user_education_history'
end
