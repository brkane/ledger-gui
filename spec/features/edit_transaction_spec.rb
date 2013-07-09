
describe "creating a transaction" do 
  it "allows me to select a date" do
    visit new_transaction_path
    expect(page).to have_field('transaction_date', type: 'date')
  end
end
      
