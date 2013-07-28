class Account
  include Mongoid::Document

  # Why doesn't this work? What is the correct method?
  # has_many :entries

  field :name, type: String

  def to_s
    name
  end
end
