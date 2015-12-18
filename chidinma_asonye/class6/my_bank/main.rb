require_relative 'lib/savings_account.rb'

s1 = SavingsAccount.new("chidinma", "000315", "100000")
s2 = SavingsAccount.new("jason", "000110", "550000")

s1.deposit(100)

puts s1.balance

s1.withdraw(200)

puts s1.balance

