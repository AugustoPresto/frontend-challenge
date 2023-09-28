class User < ApplicationRecord
  has_one_attached :avatar

  serialize :groups, Array
end
