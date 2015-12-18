require_relative 'account'

class SavingsAccount < Account
	
	attr_accessor :interest_rate, :monthly_fee, :min_bal

	def initialize (owner, account_num, balance)
		@min_bal = 100
		@owner = owner
		@account_num = account_num
		@balance = balance.to_i
		@interest_rate = 0.025
		@monthly_fee = 1
	end	

	def withdrawal
		if @balance - amount < @min_bal
			puts "transaction not possible"
		else 
			@balance -= amount	
		end	
	end	


end	