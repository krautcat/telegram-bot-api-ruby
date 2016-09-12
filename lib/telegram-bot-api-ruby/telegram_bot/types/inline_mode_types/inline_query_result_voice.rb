module TelegramBot
  module Types

    class InlineQueryResultVoice < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :voice_url              , String
      attribute :title                  , String
      attribute :voice_duration         , Integer
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
