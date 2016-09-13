module TelegramBot
  module Types

    class InlineQueryResultLocation < InlineQueryResultBaseType

      attribute :latitude               , Float
      attribute :longitude              , Float
      attribute :title                  , String
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
