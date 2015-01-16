OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1479381539007349', '4644e6c922ab8f4163ab618b1ffb2bad'
  provider :twitter, 'a8ixERNgJ2Q7abF2UYWbiFVIy', 'FBi4Woyd9l62yKfi6vnaK5Xu5kzR62ONe5FrnLAb3coZgrMKeO'
end

