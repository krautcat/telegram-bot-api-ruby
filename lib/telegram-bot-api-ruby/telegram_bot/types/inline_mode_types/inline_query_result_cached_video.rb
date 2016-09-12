module TelegramBot
  module Types

    class InlineQueryResultCachedVideo < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :video_file_id          , String
      attribute :title                  , String
      attribute :description            , String
      attribute :caption                , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
