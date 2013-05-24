OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    provider :facebook, '588417664516856', 'f19d4d753e9265ca10af575639544ef5'
  else
    provider :facebook, '227668764045536', 'f6c3f56f2f07474892d0848721817cee'
  end
end
