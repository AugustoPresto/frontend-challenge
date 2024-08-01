# frozen_string_literal: true

class UserProfileCardComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
    @address = @user.address
  end

  def formatted_address
    if @user.address.present?
      [@address.line1, @address.city, @address.state].join(', ')
    else
      'Not available'
    end
  end

  def formatted_groups
    @user.groups.present? ? @user.groups.map(&:capitalize).join(', ') : 'None'
  end
end
