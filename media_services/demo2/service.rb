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

  def add_account(account)
    @accounts << account
  end
end