module TelegramBot
  module Types

    class InlineQueryResultCachedVideo < InlineQueryResultBaseType

      attribute :video_file_id          , String
      attribute :title                  , String
      attribute :description            , String
      attribute :caption                , String

    end

  end
end
