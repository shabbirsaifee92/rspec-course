# checks for raised exceptions or error
RSpec.describe 'raise_error matcher' do 
  def some_method
    x
  end
  
  class CustomError < StandardError; end

  it 'can check for a specific error to be raised' do
    expect { some_method }.to raise_error NameError
    expect { 10 / 0 }.to raise_error ZeroDivisionError
  end

  it 'can check for custom errors' do
    expect { raise CustomError }.to raise_error CustomError
  end
end