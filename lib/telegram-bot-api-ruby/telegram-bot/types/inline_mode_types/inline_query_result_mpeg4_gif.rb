module TelegramBot
  module Types

    class InlineQueryResultMpeg4Gif < InlineQueryResultBaseType

      attribute :mpeg4_url              , String
      attribute :mpeg4_width            , Integer
      attribute :mpeg4_height           , Integer
      attribute :thumb_url              , String
      attribute :title                  , String
      attribute :caption                , String

    end

  end
end
