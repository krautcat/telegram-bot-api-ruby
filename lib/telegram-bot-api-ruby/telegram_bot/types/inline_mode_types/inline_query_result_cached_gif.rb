module TelegramBot
  module Types

    class InlineQueryResultCachedGif < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :gif_file_id            , String
      attribute :title                  , String
      attribute :caption                , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
