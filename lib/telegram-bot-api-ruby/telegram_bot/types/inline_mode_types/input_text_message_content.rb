module TelegramBot
  module Types

    class InputTextMessageContent < InlineModeBaseType

      attribute :message_text               , String
      attribute :parse_mode                 , String
      attribute :disable_web_page_preview   , Boolean

    end

  end
end
