require 'date'

def sign_up_account(service)
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
end