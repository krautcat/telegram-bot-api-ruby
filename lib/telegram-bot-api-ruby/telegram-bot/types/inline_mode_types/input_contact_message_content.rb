module TelegramBot
  module Types

    class InputContactMessageContent < InlineModeBaseType

      attribute :phone_number   , String
      attribute :first_name     , String
      attribute :last_name      , String

    end

  end
end
