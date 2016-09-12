module TelegramBot
  module Types

    class InlineQueryResultCachedVoice < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :voice_file_id          , String
      attribute :title                  , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
