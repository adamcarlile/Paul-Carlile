# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_paulcarlile-cms_session',
  :secret      => 'f022286aaa9723d660e6d0afa2210610f267a1d80e4fb951217f89a00fb37dae9aa7a9e313560bedd367c874b4e6259e935836cd4701ea61bb298d5832709037'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
