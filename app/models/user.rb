class User < ApplicationRecord
  has_one_attached :avatar

  has_one :address
  accepts_nested_attributes_for :address

  serialize :groups, Array
end
