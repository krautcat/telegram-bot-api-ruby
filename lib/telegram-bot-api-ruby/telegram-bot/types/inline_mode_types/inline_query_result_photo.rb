module TelegramBot
  module Types

    class InlineQueryResultPhoto < InlineQueryResultBaseType

      attribute :photo_url              , String
      attribute :thumb_url              , String
      attribute :photo_width            , Integer
      attribute :photo_height           , Integer
      attribute :title                  , String
      attribute :description            , String
      attribute :caption                , String

    end

  end
end
