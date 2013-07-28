require 'spec_helper'

describe "entries/edit" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :transaction => nil,
      :amount => 1,
      :account => nil
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do
      assert_select "input#entry_transaction[name=?]", "entry[transaction]"
      assert_select "input#entry_amount[name=?]", "entry[amount]"
      assert_select "input#entry_account[name=?]", "entry[account]"
    end
  end
end
