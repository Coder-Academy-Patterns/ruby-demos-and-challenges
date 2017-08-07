class Account
  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def name
    @name
  end

  def balance
    @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
  end
end


class ATM
  def initialize(location, cash)
    @location = location
    @cash = cash
  end

  def dispense(account, amount)
    account.withdraw(amount)
  end
end


atm_brisbane = ATM.new('Brisbane', 20000)
jane = Account.new('Jane', 100)

puts "Jane is withdrawing $20"
atm_brisbane.dispense(jane, 20)

puts "Jane now has $#{jane.balance} in her account"