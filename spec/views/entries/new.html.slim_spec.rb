require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :transaction => nil,
      :amount => 1,
      :account => nil
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entries_path, "post" do
      assert_select "input#entry_transaction[name=?]", "entry[transaction]"
      assert_select "input#entry_amount[name=?]", "entry[amount]"
      assert_select "input#entry_account[name=?]", "entry[account]"
    end
  end
end
