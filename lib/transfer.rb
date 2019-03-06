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
  
end
