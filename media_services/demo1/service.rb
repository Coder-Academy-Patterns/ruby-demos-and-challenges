class Service
# Has:
# - @name e.g. "Netflix"
# - @accounts

  attr_accessor :name # String
  attr_accessor :accounts # Array of Account

  def initialize()
    @accounts = []
  end

  # e.g. netflix.welcome_message
  def welcome_message
    # e.g. "Welcome to Netflix"
    "Welcome to #{self.name}"
  end

# Can do:
# - .sign_up_account
# - .delete_account

  def sign_up_account(email, first_name, last_name, date_of_birth)
    # Create new account with email
    new_account = Account.new
    new_account.email = email

    # Create new profile with user details
    new_profile = Profile.new
    new_profile.first_name = first_name
    new_profile.last_name = last_name
    new_profile.date_of_birth = date_of_birth

    # Associate profile with account
    new_account.add_profile(new_profile)

    # Add to accounts list of this service
    @accounts << new_account
  end
end