require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class EmployeeTest < MiniTest::Test
  def test_employee_hire
    employee = Employee.new     # Assuming we created this class previously
    assert_raises(NoExperienceError) do
      employee.hire
    end
  end
end