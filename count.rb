module SavingsAccount
  def self.interest_rate(amount)
    if amount <= 1000
      return 0.005
    elsif amount > 1000 && amount <= 5000 
      return 0.01621   
    elsif amount > 5000  
      return 0.02475
    end
  end

  def self.annual_balance_update(amount)
    return amount * (1 + interest_rate(amount))
  end

  def self.years_before_desired_balance(initial_amount, final_amount)
    counter = 0
    amount = initial_amount
    while amount < final_amount
      puts amount = annual_balance_update(amount)
      counter += 1 
    end
    return counter
  end
end

puts SavingsAccount.interest_rate(200.75)
puts SavingsAccount.annual_balance_update(200.75)
puts SavingsAccount.years_before_desired_balance(200.75, 214.88)
