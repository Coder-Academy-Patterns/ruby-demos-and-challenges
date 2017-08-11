class CreditCard
  attr_reader :name, :number, :expiry_date

  def initialize(name, number, expiry_date)
    @name = name
    @number = number
    @expiry_date = expiry_date
  end
end

# e.g.
# credit_card = CreditCard.new('John Smith', '45645645645645', Date.new(2019, 1, 1))