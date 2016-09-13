module TelegramBot
  module Types

    class InlineQueryResultCachedMpeg4Gif < InlineQueryResultBaseType

      attribute :mpeg4_file_id          , String
      attribute :title                  , String
      attribute :caption                , String

    end

  end
end
