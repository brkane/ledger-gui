require 'spec_helper'

describe TransactionsController do

  context 'creating a new transaction' do
    it 'renders the new transaction form' do
      get :new
      should render_template :new
    end

    it 'sets the form object' do
      get :new
      expect(assigns(:transaction)).to be_a_new Transaction
    end
  end
end
