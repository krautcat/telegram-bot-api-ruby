module TelegramBot
  module Types

    class InlineQueryResultVenue < InlineQueryResultBaseType

      attribute :latitude               , Float
      attribute :longitude              , Float
      attribute :title                  , String
      attribute :address                , String
      attribute :foursquare_id          , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
