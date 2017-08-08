require_relative 'service'
require_relative 'account'
require_relative 'profile'
require_relative 'menu'

netflix = Service.new
netflix.name = 'Netflix'

puts netflix.welcome_message

puts netflix.accounts.count # 0

sign_up_account(netflix)

latest_account = netflix.accounts.last
puts "Latest account: #{latest_account.email}"

# Ask for new account details
# ...


# Challenges:
# 1. Create a new account from user input
# e.g.
# Enter your email:
# >
# Enter your first name:
# >
# Enter your last name:
# >
# Enter your date of birth:
# >
# 
# 2. Add a profile to an existing account
# 3. Add credit card to Account
# Hint: credit card will probably have its own class
# 4. List all the profiles for an account in a menu (e.g. lots of `puts`)
# 5. Add a password to Account
# 6. When running your app, show a menu with:
#     1. Create Account
#     2. Sign In
# 7. Add favorite genre to Profile
# 8. Add a class for content, and create a library