module TelegramBot
  module Types

    class ReplyKeyboardHide < BaseType

      attribute :hide_keyboard, Boolean
      attribute :selective    , Boolean, default: false

    end

  end
end
