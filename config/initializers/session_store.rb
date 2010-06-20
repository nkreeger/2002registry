# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_2002registry_session',
  :secret      => '2a44d5486319ad6cadd0d26d330380c23c577cd48da58b080de46e39a744da4b02ca1a205745588cc11689f64bd7b433930eb1cc64aa59a7c763003f58646f9c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
