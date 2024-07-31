# frozen_string_literal: true

class UserChipComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

  attr_reader :user
end
