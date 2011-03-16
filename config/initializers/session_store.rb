# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wordify_session',
  :secret      => '1b6d12a3d9e977b6ee539d33fa42b4fef38cdea3cfce0ebc9d742094482844f24baa8754f3c55774696279e4ab1fa50771d4051d73d95a749a3c121cb6a9ce5b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
