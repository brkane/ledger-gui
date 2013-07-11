
describe Transaction do

  it 'has a date' do
    should respond_to :date
  end

  it 'has a description' do
    should respond_to :description
  end
end
