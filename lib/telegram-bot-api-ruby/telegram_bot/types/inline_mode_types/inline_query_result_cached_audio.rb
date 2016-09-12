module TelegramBot
  module Types

    class InlineQueryResultCachedAudio < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :audio_file_id          , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
