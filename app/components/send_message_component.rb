# frozen_string_literal: true

class SendMessageComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end
end
