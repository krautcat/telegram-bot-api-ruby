module TelegramBot
  module Types

    class InlineQueryResultCachedDocument < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :title                  , String
      attribute :document_file_id       , String
      attribute :description            , String
      attribute :caption                , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
