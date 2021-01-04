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
    assert_equal(initial_amount_register, register.total_money)   # Value stays the same because 
                                                                  # payment has not been made yet
    
    transaction.amount_paid = 50                                  # Payment of $50 was made
    register.accept_money(transaction)                            # Register total money should go up by $50
    assert_equal(initial_amount_register + 50, register.total_money) 
  end
  
  def test_change
    # Testing change with no payment given
    change_with_no_payment = register.change(transaction)         # Should be a negative value
    assert_equal change_with_no_payment, transaction.item_cost * -1
    
    # Testing change by paying more than item cost
    transaction.amount_paid = 100
    change_with_payment = register.change(transaction)
    assert_equal change_with_payment, 50
  end
  
  def test_give_receipt
    assert_output("You've paid $50.\n") { register.give_receipt(transaction) }
  end
  
  def test_prompt_for_payment
    # Check if we're starting with 0 amount paid
    assert_equal(0, transaction.amount_paid)
    
    # Check if amount paid is equal to 50
    user_input = StringIO.new("50\n")                  # This simulates us using keyboard to input 50
    user_output = StringIO.new
    
    # Below, $stdin is being re-asssigned to the object user_input is pointing to, and
    # #stdout is being re-assinged to the object user_output is pointing to
    transaction.prompt_for_payment(input: user_input, output: user_output)
    assert_equal(50, transaction.amount_paid)
  end
end