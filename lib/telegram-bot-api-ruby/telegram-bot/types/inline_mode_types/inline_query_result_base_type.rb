module TelegramBot
  module Types

    class InlineQueryResultBaseType < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :input_messae_content   , InlineMessageContent
      attribute :reply_markup           , InlineKeyboardMarkup

    end

  end
end
