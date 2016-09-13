module TelegramBot
  module Types

    class InlineQueryResultGif < InlineQueryResultBaseType

      attribute :gif_url                , String
      attribute :gif_width              , Integer
      attribute :gif_height             , Integer
      attribute :thumb_url              , String
      attribute :title                  , String
      attribute :caption                , String

    end

  end
end
