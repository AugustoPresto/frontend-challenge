# frozen_string_literal: true

class UserProfileCardComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

  def formatted_groups
    @user.groups.map(&:capitalize).join(', ')
  end
end
