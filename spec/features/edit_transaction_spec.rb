
describe "creating a transaction" do 
  it "allows me to select a date" do
    visit new_transaction_path
    expect(page).to have_field('transaction[date]', type: 'date')
  end

  it "allows me to enter a description" do
    visit new_transaction_path
    expect(page).to have_field('transaction[description]')
  end
end
