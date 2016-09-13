module TelegramBot
  module Types

    class InlineQueryResultCachedGif < InlineQueryResultBaseType

      attribute :gif_file_id            , String
      attribute :title                  , String
      attribute :caption                , String

    end

  end
end
