module TelegramBot
  module Types

    class InlineQueryResultVenue < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :latitude               , Float
      attribute :longitude              , Float
      attribute :title                  , String
      attribute :address                , String
      attribute :foursquare_id          , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent
      attribute :thumb_url              , String
      attribute :thumb_width            , Integer
      attribute :thumb_height           , Integer

    end

  end
end
