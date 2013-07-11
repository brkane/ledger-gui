class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end
end
