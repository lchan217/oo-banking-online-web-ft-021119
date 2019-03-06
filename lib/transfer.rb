require "pry"
class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = status 
  end 
  
  def valid? 
    @sender.valid? 
    @receiver.valid? 
  end 
  def execute_transaction 
    if status == "pending" && @sender.balance > @amount 
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
    else 
      @status = "rejected"
       "Transaction rejected. Please check your account balance."
    end 
  end
  def reverse_transfer 
    @status = "reversed"
  end 
end
