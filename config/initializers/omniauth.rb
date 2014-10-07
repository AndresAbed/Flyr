OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '842551059109662', 'fd567768f438ee449364fbad67abd59e', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end