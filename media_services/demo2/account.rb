class Account
# Has:
# - @email
# - @profiles
# TODO:
# - @credit_card

  attr_accessor :email # String
  attr_accessor :profiles # Array of Profile

  def initialize
    @profiles = []
  end

# Can do:
# .new
# .add_profile
# .remove_profile

  def add_profile(profile)
    @profiles << profile
    profile.account = self
  end
end