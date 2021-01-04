require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  attr_accessor :register, :transaction
  
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(50)
  end
  
  def test_accept_money
    initial_amount_register = register.total_money
    
    register.accept_money(transaction) 
    assert_equal(initial_amount_register, register.total_money) # Value stays the same because 
                                                                # payment has not been made yet
    
    transaction.amount_paid = 50                                # Payment of $50 was made
    register.accept_money(transaction)                          # Register total money should go up by $50
    assert_equal(initial_amount_register + 50, register.total_money) 
  end
end