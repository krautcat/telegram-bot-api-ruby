module TelegramBot
  module Types

    class InlineQueryResultCachedDocument < InlineQueryResultBaseType

      attribute :title                  , String
      attribute :document_file_id       , String
      attribute :description            , String
      attribute :caption                , String

    end

  end
end
