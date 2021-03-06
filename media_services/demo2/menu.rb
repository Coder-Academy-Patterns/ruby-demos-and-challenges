require 'date'

def main_menu(service)
  loop do
    # Give user a blank slate
    system 'clear'
    # Display menu items
    puts service.welcome_message
    puts '1. Create Account'
    puts '2. Sign In'
    puts 'x. Exit'
    # Ask user for chosen menu item
    choice = gets.strip
    # Perform action based on user’s choice
    case choice
    when '1'
      sign_up_account(service)
      # puts 'Press enter to continue'
      # gets
      sleep 3
    when '2'
      account = sign_into_account(service)
      puts "Welcome #{account.email}"
      profile = choose_profile(account)
      sleep 5
    when 'x'
      break # Stop the loop for this menu
    else
      puts "Invalid choice: #{choice}"
      sleep 3 # Wait 3 seconds to allow user to read above message
    end # case
  end # loop do
end # def main_menu

def sign_up_account(service)
  system 'clear'
  puts 'Create Account'
  puts ''
  # Asking the user for account/profile information
  puts 'Email:'
  email = gets.strip
  puts 'First name:'
  first_name = gets.strip
  puts 'Last name:'
  last_name = gets.strip
  puts 'Date of birth:'
  date_of_birth = Date.parse(gets.strip)

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
  service.add_account(new_account)

  puts 'Account created!'
end

def sign_into_account(service)
  system 'clear'
  puts 'Sign In'
  puts ''

  # loop
  # while — if
  # until — unless

  account = nil
  until account # Keep running the code inside until we have an account
    puts 'Enter email:'
    email = gets.strip

    account = service.find_account_for_email(email)
    puts "No account found for email: #{email}" if account.nil?
  end # until account

  account
end # def sign_into_account

def choose_profile(account)
  # Challenge: implement this method
  # 1. Display list of profiles
  # 2. Allow user to enter the profile they want
  # 3. Return the profile from choose_profile method
end

def make_new_profile_for_account(account)
  # Challenge: implement this method
  # 1. Ask for profile details
  # 2. Create new profile object
  # 3. Add it to the `account` object
  # 4. Edit the `sign_up_account` method to use this new `make_new_profile_for_account` method
end

# Advanced challenge: implement this method
# 1. Save the `accounts` above to a file — research techniques for saving 
# 2. Load the accounts from the file when starting the app

def save_accounts(accounts)
end

def load_accounts(accounts)
end