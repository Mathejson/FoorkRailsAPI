Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'rSjQt7BLxWTGOBgXE6jnj1v4HjQR5liz',
    'YOUR_CLIENT_SECRET',
    'foork.eu.auth0.com',
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end