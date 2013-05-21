OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '588417664516856', 'f19d4d753e9265ca10af575639544ef5',
  :scope => 'email,user_education_history'
end
