# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_StatementIP_session',
  :secret      => 'd824fbecc26ebcf669e974dab92fe7e3f0480677bfd6f888d96f5d0245beb5b47e349dc40818966e2ca8bc1c67fb76a8375e7d9da63741650b28861629340da1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
