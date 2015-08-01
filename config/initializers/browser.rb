Rails.configuration.middleware.use Browser::Middleware do
  redirect_to browser_path if not browser.modern?
end