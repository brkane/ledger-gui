class Transaction
  include Mongoid::Document

  embeds_many :entries, inverse_of: :transaction

  field :date, type: Date
  field :description, type: String

  def to_s
    "#{description} (#{date})"
  end
end
