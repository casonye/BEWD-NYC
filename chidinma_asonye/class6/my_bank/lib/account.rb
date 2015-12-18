class Account
	
	attr_accessor :owner, :account_num, :balance, :password, :username


	def deposit(amount)
		@balance += amount
	end	

	def withdraw(amount)
		@balance -= amount
	end	

	def check_balance
		puts @balance
	end	

end	