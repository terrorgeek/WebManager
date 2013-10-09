# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_WebManager_session',
  :secret      => '764205ec1f6e8d6917253bb40d8de46780395d436f7172e0707e75f4b828473ae15178f4e5edce586cc7a0f91c58c7903f6f739e11d587c28ae30cfd963bd44a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
