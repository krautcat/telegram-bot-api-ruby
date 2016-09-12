module TelegramBot
  module Types

    class InlineQueryResultMpeg4Gif < InlineModeBaseType

      attribute :type                   , String
      attribute :id                     , String
      attribute :mpeg4_url              , String
      attribute :mpeg4_width            , Integer
      attribute :mpeg4_height           , Integer
      attribute :thumb_url              , String
      attribute :title                  , String
      attribute :caption                , String
      attribute :reply_markup           , InlineKeyboardMarkup
      attribute :input_message_content  , InputMessageContent

    end

  end
end
