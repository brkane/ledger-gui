
class Transaction

  include Mongoid::Document

  field :date, type: Date
  field :description, type: String

end
