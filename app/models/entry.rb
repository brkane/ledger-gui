class Entry
  include Mongoid::Document

  embedded_in :transaction, inverse_of: :entries
  belongs_to :source_account, class_name: 'Account', inverse_of: :entry
  belongs_to :destination_account, class_name: 'Account', inverse_of: :entry

  field :amount, type: Integer

  def to_s
    '%s -> %s %.2f' % [source_account, destination_account, amount / 100.0]
  end
end
