class Service
# Has:
# - @name e.g. "Netflix"
# - @accounts
  attr_accessor :name # String
  attr_reader :accounts # Array of Account

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

  def add_account(account)
    # We could validate account here
    @accounts << account
  end

  def find_account_for_email(email)
    # Hold the account with the specified email
    # We haven’t found it yet, so it starts off as nothing
    found_account = nil
    # We loop through each account that we have
    @accounts.each do |account|
      # Check if this particular account has the specified email
      if account.email == email
        # If so, we have found our account!
        found_account = account
        # No need to keep searching through the rest of the accounts
        break
      end
    end
    # This will either return found account, or nothing if there was no account with that email
    return found_account
  end
end