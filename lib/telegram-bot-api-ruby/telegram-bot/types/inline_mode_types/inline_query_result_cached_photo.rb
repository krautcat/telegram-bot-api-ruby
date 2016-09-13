module TelegramBot
  module Types

    class InlineQueryResultCachedPhoto < InlineQueryResultBaseType

      attribute :photo_file_id          , String
      attribute :title                  , String
      attribute :description            , String
      attribute :caption                , String

    end

  end
end
