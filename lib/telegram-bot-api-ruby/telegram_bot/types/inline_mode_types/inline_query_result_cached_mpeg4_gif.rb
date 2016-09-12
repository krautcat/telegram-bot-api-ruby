module TelegramBot
  module Types

    class InlineQueryResultCachedMpeg4Gif < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :mpeg4_file_id          , String
      attribute :title                  , String
      attribute :caption                , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
